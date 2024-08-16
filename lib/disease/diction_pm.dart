import 'package:flutter/material.dart';

class DictionPM extends StatelessWidget {
  const DictionPM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 흰가루병',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Suite',
            color: Color(0xFF333333),
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                // Title Text
                Text(
                  '토마토 흰가루병',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Suite',
                    color: Color(0xFF333333),
                  ),
                ),
                SizedBox(height: 16),

                // Image
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFDDDDDD),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 4)],
                  ),
                  child: Image.asset(
                    'assets/images/pm.jpg', // Adjust the path as needed
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '고추와 오크라, 토마토, 가지, 오이 등이 병 발생 기주로 알려져 있다.\n'
                      '시설재배지와 가을 날씨가 건조할 때 심하게 발생한다.\n'
                      '분생포자는 공기전염되며, 건조한 조건하에서는 80일간 전염원 능력이 유지된다.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Suite',
                    color: Color(0xFF666666),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 16),

                // Symptoms Header
                Text(
                  '증상:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Suite',
                    color: Color(0xFF333333),
                  ),
                ),
                SizedBox(height: 16),

                // Symptoms Content
                Text(
                  '주로 잎에 발생한다.\n'
                      '처음에는 잎 뒷면의 엽맥을 따라 얇은 서릿발 모양의 포자가 밀생하고, 진전되면 그 부분의 표면에 담황색의 병무늬가 형성된다.\n'
                      '심하게 발생하면 잎이 고사되어 떨어지고, 끝부분의 새로 나온 잎만 남게 된다.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Suite',
                    color: Color(0xFF666666),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 16),

                // Control Methods Header
                Text(
                  '방제 방법:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Suite',
                    color: Color(0xFF333333),
                  ),
                ),
                SizedBox(height: 16),

                // Control Methods Content
                Text(
                  '- 병든 잎은 일찍 제거하여 초기 전염원을 없앤다.\n'
                      '- 질소비료의 과용을 피하고 과번무 하지 않게 관리한다.\n'
                      '- 다소 건조하고 서늘한 조건에서 많이 발생하므로, 다른 병의 발생을 조장하지 않는한 온도와 습도를 높여준다.\n'
                      '- 내부기생성 병원균이므로 침투이행성 적용약제를 살포한다.\n'
                      '- 발병 초 예방적으로 약제를 살포하는 것이 효과적이다.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Suite',
                    color: Color(0xFF666666),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
