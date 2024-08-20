import 'package:flutter/material.dart';
import 'dart:io'; // Import for File handling on mobile
import 'write.dart'; // Ensure this import is correct

class DiaryEntry {
  final String title;
  final String date;
  final String content;
  final String? imagePath; // Image path can be null

  DiaryEntry({
    required this.title,
    required this.date,
    required this.content,
    this.imagePath,
  });
}

class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  List<DiaryEntry> diaryEntries = [
    DiaryEntry(title: "First Entry", date: "2024-08-01", content: "This is my first diary entry."),
    DiaryEntry(title: "Second Entry", date: "2024-08-02", content: "Today was a good day!"),
    DiaryEntry(title: "Third Entry", date: "2024-08-03", content: "Learning Flutter is fun!"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Diary'),
        backgroundColor: Colors.green[600], // Dark green for AppBar
      ),
      body: ListView.builder(
        itemCount: diaryEntries.length,
        itemBuilder: (context, index) {
          final entry = diaryEntries[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            color: Colors.green[50], // Light green for card background
            child: ListTile(
              title: Text(entry.title),
              subtitle: Text(entry.date),
              trailing: Icon(Icons.arrow_forward, color: Colors.green[600]), // Green color for icon
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiaryDetailPage(entry: entry),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newEntry = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Write()), // Ensure Write is correctly imported and used
          );
          if (newEntry != null) {
            setState(() {
              diaryEntries.add(newEntry);
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[600], // Dark green for FloatingActionButton
      ),
    );
  }
}

class DiaryDetailPage extends StatelessWidget {
  final DiaryEntry entry;

  const DiaryDetailPage({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entry.title),
        backgroundColor: Colors.green[600], // Dark green for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (entry.imagePath != null)
              Image.file(
                File(entry.imagePath!),
                height: 200,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 16.0),
            Text(
              entry.date,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.green[800]), // Dark green for date
            ),
            SizedBox(height: 16.0),
            Text(
              entry.content,
              style: TextStyle(fontSize: 16.0, color: Colors.green[700]), // Medium green for content
            ),
          ],
        ),
      ),
    );
  }
}
