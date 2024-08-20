import 'package:flutter/material.dart';
import 'diction.dart';
import 'detect.dart';

class Select extends StatelessWidget {
  const Select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Image.asset(
              'assets/images/name.png',
              width: 200,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white, // Ensure the background color is white
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(context, Icons.pageview, '작물1', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detect(),
                            ),
                          );
                        }),
                        _buildFlexItem(context, Icons.pageview, '작물2', () {
                          // 버튼 클릭 시 처리할 코드
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('병징 진단 버튼이 클릭되었습니다.')),
                          );
                        }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(
                          context,
                          Icons.pageview,
                          '작물3',
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Diction(),
                              ),
                            );
                          },
                        ),
                        _buildFlexItem(
                          context,
                          Icons.pageview,
                          '작물4',
                              () {
                            // 검색 버튼 클릭 시 처리할 코드
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('검색 버튼이 클릭되었습니다.')),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlexItem(BuildContext context, IconData icon, String label, VoidCallback onPressed) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4.0,
          color: Colors.white, // Card background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(12.0), // Rounded corners for InkWell
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 50.0, color: Colors.green[600]), // Icon color
                  SizedBox(height: 8.0),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green[600], // Text color
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
