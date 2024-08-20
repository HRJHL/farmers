import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'diction.dart';
import 'select.dart';
import 'diary.dart';
import 'search.dart';

class Home extends StatefulWidget {
  final String userId;

  const Home({super.key, required this.userId});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nickname = '닉네임';
  String _email = '이메일';

  @override
  void initState() {
    super.initState();
    _fetchUserInfo();
  }

  Future<void> _fetchUserInfo() async {
    String url = 'http://192.168.0.76:3000/user-info/${widget.userId}';

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        setState(() {
          _nickname = data['nickname'] ?? '닉네임';
          _email = data['email'] ?? '이메일';
        });
      } else {
        print('사용자 정보 조회 실패: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('오류 발생: $e');
    }
  }

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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250.0,
            width: double.infinity,
            color: Colors.teal[100],
            child: Image.asset(
              'assets/images/main.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(
                          context,
                          Icons.book,
                          '영농 일지',
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Diary(userId: widget.userId),
                              ),
                            );
                          },
                        ),
                        _buildFlexItem(
                          context,
                          Icons.pageview,
                          '병징 진단',
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Select(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(
                          context,
                          Icons.book,
                          '병징 도감',
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
                          Icons.search,
                          '검색',
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Search(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/cha.png'),
              ),
              accountEmail: Text(_email),
              accountName: Text(_nickname),
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.green[700]),
              title: Text('회원정보'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to user profile or settings
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.green[700]),
              title: Text('이용내역'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to usage history
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.green[700]),
              title: Text('설정'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to settings
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.green[700]),
              title: Text('도움말'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to help or FAQ
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.green[700]),
              title: Text('로그아웃'),
              onTap: () {
                Navigator.pop(context);
                // Handle logout functionality
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 56.0,
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
          color: Colors.teal[50],
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 50.0, color: Colors.teal[400]),
                  SizedBox(height: 8.0),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.teal[700],
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
