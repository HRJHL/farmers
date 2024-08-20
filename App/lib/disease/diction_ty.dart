import 'package:flutter/material.dart';

class DictionTY extends StatelessWidget {
  const DictionTY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 황화잎말림 바이러스',
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
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Text
                  Text(
                    '토마토 황화잎말림 바이러스',
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
                      'assets/images/ty.jpg', // Adjust the path as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Description Text
                  Text(
                    '담배가루이가 토마토황화잎말림바이러스에 감염된 토마토 및 잡초의 즙액을 빨아먹는 과정에서 '
                        '이바이러스를 충체 내에 보독하여 건전 토마토 육묘에 바이러스를 전염시킨다. 하지만 이 바이러스는 즙액, 종자 및 접촉에 의해서 점염되지 않는다. '
                        '담배가루이가 이 바이러스에 감염된 토마토 틉액을 먹은 후 8시간 정도 잠복기 과정을 거친 다음 바이러스를 건전 식물체에 점염시킨다. '
                        '기온에 따라 다르지만 담배가루이 암컷은 약 150개의 알을 낳으며, 수명은 약 21일 이기 때문에 담배가루이가 발생한 곳에는 여러세대가 다양하게 존재한다. '
                        '토마토황화잎말림바이러스에 감염된 토마토의 식물체 즙액을 먹고 바이러스를 보유한 담배가루이가 죽을때까지 바이러스를 전염시킬수 있다.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Suite',
                      color: Color(0xFF666666),
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Divider
                  Divider(
                    color: Color(0xFFCCCCCC),
                    thickness: 1,
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
                    '토마토황화잎말림바이러스에 감염된 토마토는 황화, 잎말림 및 위축 등의 증상이 나타난다.\n'
                        '전염기주로서는 현재 단자엽 쌍자엽 식물 등 약 6종과 20여종 이상 보고되어 있다. 주로 토마토 및 고추를 비롯한 가지과 작물 등에서 주로 발생되는 병이이다.\n'
                        '토마토 어린 식무렟가 감염되면 심한 위축과 함께 잎이 작아지며 뒤틀리게 되면서 잎이 노랗게 변색이 된다.\n'
                        '줄기에서는 절간 지ㅏㅇ의 위축 및 꽃이 피지 않거나 꽃이 피어도 과실이 정상적으러 맺지 못한다. 고추, 쑥 등\n'
                        '주변 식물에서 뚜렷한 증상을 보이지 않지만, 토마토 황하잎말림 바이러스 이병주 및 보독 담배가루이가 발견되므로 주의해야한다.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Suite',
                      color: Color(0xFF666666),
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Divider
                  Divider(
                    color: Color(0xFFCCCCCC),
                    thickness: 1,
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
                    '육묘장의 특성상 주민들의 요구에 맞춘 토마토 품종의 육묘들이 제공되나\n'
                        '토마토황하ㅗ잎말림 바이러스에 저항성인 토마토 품종을 선택해야 한다.\n'
                        '바이러스에 대한 내병성 품종들을 선택 재배하여 병에 대한 예방이 가능하다\n'
                        '어린 토마토 묘는 담배가루이가 선호하므로 이 바이러스병에 감염될 위험성이 높기 때문에 육묘할때 50ㅅ메쉬방 방충망을 이용하여 해춫ㅇ의 접근을 차단해야 한다.\n'
                        '오직 담배가루이만 토마토황화잎마름바이러스병을 전염시킨다. 적절한 해충 방제가 필요하다.',
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
          ),
        ],
      ),
    );
  }
}