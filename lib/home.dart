import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 8.0), // 위쪽에 8픽셀의 패딩 추가
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 200, // 이미지 너비 설정
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // 그림자 없애기
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding을 추가하여 여백을 설정합니다.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 자식 위젯이 가로로 꽉 차도록 설정합니다.
          children: [
            Container(
              height: 250.0, // 고정 높이를 설정합니다.
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0), // 아래쪽에 여백을 추가합니다.
              color: Colors.blueAccent, // 배경색을 설정합니다.
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
            // `Row`를 사용하여 버튼을 수평으로 배치합니다.
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(context, Icons.pageview, '영농 일지'),
                        _buildFlexItem(context, Icons.pageview, '병징 진단'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFlexItem(context, Icons.pageview, '병징 도감'),
                        _buildFlexItem(context, Icons.pageview, '검색'),
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
                )
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
                  )),
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
          height: 56.0, // BottomAppBar의 높이를 설정합니다.
        ),
      ),
    );
  }

  Widget _buildFlexItem(BuildContext context, IconData icon, String label) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0), // 여백을 추가하여 버튼 사이의 간격을 설정합니다.
        child: Card(
          elevation: 4.0,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$label 버튼이 클릭되었습니다.')),
              );
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 50.0), // 아이콘 크기 유지
                  SizedBox(height: 8.0),
                  Text(
                    label,
                    style: TextStyle(fontSize: 16.0), // 텍스트 크기 유지
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
