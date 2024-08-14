import 'package:flutter/material.dart';

class Diction extends StatelessWidget {
  const Diction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '병징 정보',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Suite',
          ),
        ),
        backgroundColor: Color(0xFF5B9A77),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          DiseaseCard(
            imagePath: 'assets/images/bs.jpg',
            title: '세균성 점무늬병',
            onTap: () => print('세균성 점무늬병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/eb.jpg',
            title: '반점병',
            onTap: () => print('반점병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/hn.jpg',
            title: '정상',
            onTap: () => print('정상 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/lb.jpg',
            title: '역병',
            onTap: () => print('역병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/lm.jpg',
            title: '잎곰팡이병',
            onTap: () => print('잎곰팡이병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/pm.jpg',
            title: '흰가루병',
            onTap: () => print('흰가루병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/sl.jpg',
            title: '시드름병',
            onTap: () => print('시드름병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/sm.jpg',
            title: '점박이응애',
            onTap: () => print('점박이응애 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/ts.jpg',
            title: '갈색무늬병',
            onTap: () => print('갈색무늬병 클릭됨'),
          ),
          DiseaseCard(
            imagePath: 'assets/images/tv.jpg',
            title: '모자이크바이러스',
            onTap: () => print('모자이크바이러스 클릭됨'),
          ),
        ],
      ),
    );
  }
}

class DiseaseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const DiseaseCard({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Suite',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}