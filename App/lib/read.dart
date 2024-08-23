import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'diary.dart';

class Read extends StatelessWidget {
  final DiaryEntry entry;

  const Read({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(entry.date);
    final formattedDate = DateFormat('yyyy-MM-dd').format(date);

    return Scaffold(
      appBar: AppBar(
        title: Text('일지 쓰기'),  // Changed title here
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              formattedDate,  // Use formattedDate here
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            entry.imagePath != null
                ? Image.network(
              entry.imagePath!,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text('Failed to load image'));
              },
            )
                : Container(),
            SizedBox(height: 16.0),
            Text(
              entry.content,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
