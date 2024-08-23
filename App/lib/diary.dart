import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'write.dart';
import 'read.dart';

class DiaryEntry {
  final int id;
  final String title;
  final String content;
  final String? imagePath;
  final String date;

  DiaryEntry({
    required this.id,
    required this.title,
    required this.content,
    this.imagePath,
    required this.date,
  });

  factory DiaryEntry.fromJson(Map<String, dynamic> json) {
    final baseUrl = 'http://192.168.0.76:3000/uploads/';
    final imagePath = json['imagePath'] != null
        ? (json['imagePath']!.startsWith(baseUrl)
        ? json['imagePath']
        : baseUrl + json['imagePath'])
        : null;

    return DiaryEntry(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      imagePath: imagePath,
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'imagePath': imagePath,
      'date': date,
    };
  }
}

class Diary extends StatefulWidget {
  final String userId;

  Diary({required this.userId});

  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  List<DiaryEntry> diaryEntries = [];

  @override
  void initState() {
    super.initState();
    _fetchEntries();
  }

  Future<void> _fetchEntries() async {
    final url = Uri.parse('http://192.168.0.76:3000/diary-entries/${widget.userId}');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        setState(() {
          diaryEntries = data.map((entry) => DiaryEntry.fromJson(entry)).toList();
        });
      } else {
        print('Failed to load entries');
      }
    } catch (e) {
      print('Error fetching entries: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary Entries'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Write(userId: widget.userId),
                ),
              );

              if (result != null && result is DiaryEntry) {
                setState(() {
                  diaryEntries.add(result);
                });
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: diaryEntries.length,
        itemBuilder: (context, index) {
          final entry = diaryEntries[index];
          return ListTile(
            title: Text(entry.title),
            subtitle: Text(entry.date),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Read(entry: entry),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
