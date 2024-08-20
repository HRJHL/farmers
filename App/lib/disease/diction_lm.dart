import 'package:flutter/material.dart';

class DictionLM extends StatelessWidget {
  const DictionLM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 잎곰팡이병',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Suite',
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
                  '토마토 잎곰팡이병',
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
                    'assets/images/lm.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '병원균은 병든 잎이나 종자 등에서 겨울을 지내고 1차 전염원이 되나, 시설재배에서는 병원균이 각종 농자재에 붙어 겨울을 지내기도 한다.\n'
                      '2차 전염은 병반상에 형성된 포자가 전반되어 잎의 기공을 통하여 침입하여 발병된다.\n'
                      '20～25℃ 의 온도조건하에서 피해가 크며, 특히 시설재배지에서 심하게 발생한다.',
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
                  '잎에 발생한다.\n'
                      '처음에는 잎의 표면에 흰색 또는 담회색의 반점으로 나타나고 진전되면 황갈색 병반으로 확대된다.\n'
                      '잎 뒷면에 담갈색의 병반이 형성되는데, 병반상에는 갈색의 곰팡이가 융단처럼 밀생되어 있는 것을 볼 수 있으며, 오래되면 균총이 갈색에서 연한 자색으로 변한다.\n'
                      '주로 아래 잎에서 피해가 크며, 심하면 아랫잎 전체가 누렇게되고 말라 죽는다.',
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
                  '- 병든 잎을 신속히 제거한다.\n'
                      '- 90%이상의 상대습도가 유지되지 않도록 한다.\n'
                      '- 통풍이 잘되게 하고 밀식하지 않는다.\n'
                      '- 건전한 종자를 사용하고, 깨끗한 자재를 사용한다.\n'
                      '- 질소질 비료의 과용을 피한다.',
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
