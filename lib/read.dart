import 'package:flutter/material.dart';
import 'dart:io'; // Import for File handling on mobile
import 'diary.dart'; // Import the DiaryEntry class

class Read extends StatelessWidget {
  final DiaryEntry entry;

  const Read({required this.entry, super.key});

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
