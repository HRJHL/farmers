import 'package:flutter/material.dart';
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
  List<DiaryEntry> _allEntries = [
    // Example entries for demo purposes
    DiaryEntry(title: "First Entry", date: "2024-08-01", content: "This is my first diary entry."),
    DiaryEntry(title: "Second Entry", date: "2024-08-02", content: "Today was a good day!"),
    DiaryEntry(title: "Third Entry", date: "2024-08-03", content: "Learning Flutter is fun!"),
  ];

  void _performSearch(String query) {
    setState(() {
      _searchResults = _allEntries
          .where((entry) =>
      entry.title.toLowerCase().contains(query.toLowerCase()) ||
          entry.content.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Diary Entries'),
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
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    color: Colors.green[50], // Light green for card background
                    child: ListTile(
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
