import 'package:flutter/material.dart';
import 'disease/diction_bs.dart';
import 'disease/diction_eb.dart';
import 'disease/diction_lb.dart';
import 'disease/diction_lm.dart';
import 'disease/diction_pm.dart';
import 'disease/diction_sl.dart';
import 'disease/diction_sm.dart';
import 'disease/diction_ts.dart';
import 'disease/diction_tv.dart';
import 'disease/diction_ty.dart';

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionBS(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/eb.jpg',
            title: '반점병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionEB(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/lb.jpg',
            title: '역병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionLB(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/lm.jpg',
            title: '잎곰팡이병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionLM(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/pm.jpg',
            title: '흰가루병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionPM(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/sl.jpg',
            title: '시드름병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionSL(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/sm.jpg',
            title: '점박이응애',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionSM(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/ts.jpg',
            title: '갈색무늬병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionTS(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/tv.jpg',
            title: '모자이크바이러스',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionTV(),
                ),
              );
            },
          ),
          DiseaseCard(
            imagePath: 'assets/images/ty.jpg',
            title: '토마토 황화 잎마름병',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DictionTY(),
                ),
              );
            },
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
                  fontSize: 20, // Adjusted for better fit
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
