import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'diary.dart'; // DiaryEntry 정의

class Write extends StatefulWidget {
  final String userId;

  const Write({super.key, required this.userId});

  @override
  _WriteState createState() => _WriteState();
}

class _WriteState extends State<Write> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  String _imagePath = '';

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path; // Use the file path directly
      });
    }
  }

  Future<void> _saveEntry() async {
    final title = _titleController.text;
    final content = _contentController.text;
    final date = DateTime.now().toString().split(' ')[0];

    final uri = Uri.parse('http://192.168.0.76:3000/save-entry');
    final request = http.MultipartRequest('POST', uri);

    // Add fields
    request.fields['title'] = title;
    request.fields['content'] = content;
    request.fields['date'] = date;
    request.fields['userId'] = widget.userId;

    // Add image file if available
    if (_imagePath.isNotEmpty) {
      request.files.add(
        http.MultipartFile.fromBytes(
          'image',
          File(_imagePath).readAsBytesSync(),
          filename: _imagePath.split('/').last,
        ),
      );
    }

    try {
      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(responseBody);
        final newEntry = DiaryEntry.fromJson(jsonResponse);
        Navigator.pop(context, newEntry);
      } else {
        print('Failed to save entry: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending request: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('일지 쓰기'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
                image: _imagePath.isNotEmpty
                    ? DecorationImage(
                  image: FileImage(File(_imagePath)),
                  fit: BoxFit.cover,
                )
                    : null,
              ),
              child: _imagePath.isEmpty
                  ? Center(child: Text('No image selected', textAlign: TextAlign.center))
                  : null,
            ),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[600],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14.0),
                textStyle: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              ),
              maxLines: 6,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _saveEntry,
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[600],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14.0),
                textStyle: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
