import 'package:flutter/material.dart';
import 'diction.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 250.0,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  '이미지로 대체 예정',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(context, Icons.pageview, '영농 일지', () {
                          // 버튼 클릭 시 처리할 코드
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('영농 일지 버튼이 클릭되었습니다.')),
                          );
                        }),
                        _buildFlexItem(context, Icons.pageview, '병징 진단', () {
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
                          Icons.pageview,
                          '검색',
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
