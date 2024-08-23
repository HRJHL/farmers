import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'diary.dart'; // Import the DiaryEntry class
import 'read.dart';  // Import the Read page for viewing entries

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  List<DiaryEntry> _searchResults = [];

  // Function to perform search
  Future<void> _performSearch(String query) async {
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
      });
      return;
    }

    final url = Uri.parse('http://192.168.0.76:3000/search-diaries');
    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"query": query}),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        setState(() {
          _searchResults = data.map((entry) => DiaryEntry.fromJson(entry)).toList();
        });
      } else {
        print('Failed to load search results');
      }
    } catch (e) {
      print('Error fetching search results: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('일지 검색'),
        backgroundColor: Colors.green[600], // Dark green for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _performSearch,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final entry = _searchResults[index];
                  final date = DateTime.parse(entry.date);
                  final formattedDate = DateFormat('yyyy-MM-dd').format(date);

                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    color: Colors.green[50], // Light green for card background
                    child: ListTile(
                      title: Text(entry.title),
                      subtitle: Text(formattedDate),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Read(entry: entry),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
