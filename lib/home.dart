import 'package:flutter/material.dart';
import 'diction.dart';
import 'select.dart';
import 'diary.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white, // 바디 배경색을 하얗게 설정
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250.0,
            width: double.infinity, // 가로 꽉 차게 설정
            color: Colors.blueAccent,
            child: Image.asset(
              'assets/images/bener.jpg',
              fit: BoxFit.cover, // 이미지가 꽉 차게 설정
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
                        _buildFlexItem(context, Icons.book, '영농 일지', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Diary(),
                            ),
                          );
                        }),
                        _buildFlexItem(context, Icons.pageview, '병징 진단', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Select(),
                            ),
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
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/roll.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/roll.png'),
                ),
              ],
              accountEmail: Text('dev.yakkuza@gmail.com'),
              accountName: Text('Dev Yakuza'),
              onDetailsPressed: () {
                print('press details');
              },
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              title: Text('회원정보'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('이용내역'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // 바텀 앱바의 배경색을 하얗게 설정
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
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 50.0),
                  SizedBox(height: 8.0),
                  Text(
                    label,
                    style: TextStyle(fontSize: 16.0),
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
