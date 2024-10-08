import 'package:flutter/material.dart';

class DictionTV extends StatelessWidget {
  const DictionTV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 모자이크 바이러스',
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
                    '토마토 모자이크 바이러스',
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
                      'assets/images/tv.jpg', // Adjust the path as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Description Text
                  Text(
                    'CMV는 세계 각국에 널리 분포되어 있으며, 특히 온대지역에 발생이 많다.\n'
                        '우리 나라에서도 전국 각지에 분포되어 각종 작물에 피해를 주고 있다.\n'
                        'PVX는 즙액전염 또는 접촉에 의해서도 전염이 된다.\n'
                        '접촉전염은 잎이나 줄기 접촉뿐만 아니라 뿌리 접촉에 의해서도 전염된다.\n'
                        'PVX는 진딧물에 의하여 매개되지 않으나, 직시목에 속하는 곤충과 진균(Synchyrium endoticum)에 의하여도 전염되기도 한다.\n'
                        '자연 상태에서 감염이 되는 기주로는 고추, 담배, 감자, 토마토 등이다.\n'
                        'PepMoV를 자연상태에서 전염시키는 것은 진딧물이다.\n'
                        'PepMoV는 비영속형전염 바이러스로서 충체(蟲體)내 잠복기간이 없다.\n'
                        '또한 바이러스를 획득한 보독충(保毒蟲)도 단기간 안에 바이러스의 전염력(傳染力)을 잃는다.\n'
                        '자연상태에서 감염되는 것은 담배, 고추, 감자 등이다.\n'
                        'TMV는 종자전염이 되고, 연작지 토양내 병든 식물의 유체 등도 1차 전염원으로 중요하다.\n'
                        'TMV는 진딧물에 의하여 전염되는 것이 아니고, 접촉전염이 되는데 자연감염 기주가 전염원으로 주위에 있으면 발병이 잘 된다.\n'
                        '또한 이 바이러스는 기주범위가 넓어서 가지과, 국화과, 콩과 등 쌍자엽식물을 주로 하여 22과 200종 이상 침해한다.\n'
                        '특히 토마토, 피만, 고추, 담배가 주로 발병되는 작물이다.',
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
                    '4종류의 바이러스에 의해서 발생한다.\n'
                        'CMV에 의한 증상은 황화(黃化)되고 요철(凹凸)이 있는 모자이크로 나타난다.\n'
                        '병든 그루에서 새로 나온 잎은 잎폭이 좁고, 위축(萎縮)되며, 고사리잎(細葉)이 되고, 그루 전체가 왜소해진다.\n'
                        'PVX의 전형적인 병징은 잎맥과 잎맥 사이에 담녹색의 모자이크 병반이 약하게 나타난다.\n'
                        '병이 더 진전되면 잎면에 주름이 생기고 위축현상이 약하게 나타난다.\n'
                        'PepMoV에 의한 증상은 엽맥에 녹색띠가 있으며 황반모자이크를 보인다.\n'
                        '또한, 잎의 아랫쪽에서 엽맥투명(葉脈透明)의 증상이 나타나 위쪽으로 진전되어 올라간다.\n'
                        'TMV에 의한 증상은 모자이크로 나타나며, 새로 나온 잎이 황색으로 되는 것도 있으나 일반적으로 생육이 왕성한 시기에는 병징이 잘 나타나지 않고, 잎, 잎자루, 줄기 등에 갈색반점으로 나타날 때도 있다.\n'
                        '심하면 잎과 꽃눈이 떨어지고, 잔가지가 고사(枯死)되는 경우도 있다.',
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
                    '○ CMV 방제 - 진딧물이 전염시키므로 진딧물의 기주를 제거한다.\n'
                        '- 등록된 살충제를 살포하여 진딧물을 방제한다.\n'
                        '- 전 작물의 잔재물을 제거하고, 작물의 파종시기 및 이식시기를 조절한다.\n'
                        '- 바이러스의 잠재적인 보존원인 잡초나 중간 기주를 제거한다.\n'
                        '- 전염원이 되는 병든 식물은 발견 즉시 제거한다.\n\n'
                        '○ PVX 방제 - 파종 간격을 넓게 하여 잎이나 줄기, 뿌리가 서로 접촉하는 것을 막는다.\n'
                        '- 병든 포기를 조기에 제거한다.\n'
                        '- 감자를 파종하기 위하여 자를 때 싹을 피하여 자른다.\n'
                        '- 사용하는 기구(칼)의 소독을 철저히 한다.\n'
                        '- 오염토양, 옷, 손, 농기구들의 오염물 제거한다.\n\n'
                        '○ PepMoV 방제 - 복숭아혹진딧물의 기주 식물인 가지과, 배추과 등을 주위에 재배하지 않는다.\n'
                        '- 자연 발병 기주인 담배, 고추, 감자 등을 연속 재배하지 말아야 한다.\n'
                        '- 병든 포기는 일찍 제거한다.\n'
                        '- 등록된 살충제를 살포하여 진딧물을 방제한다.\n'
                        '- 품종간 병 발생 차이가 있으므로 저항성 품종을 재배한다.\n\n'
                        '○ TMV 방제 - 고추와 토마토를 연속 재배하지 말아야 한다.\n'
                        '- 종자 소독 처리를 철저히 한 후 파종한다.\n'
                        '- 오염 토양, 옷, 손, 농기구들의 오염물을 제거한다.\n'
                        '- 이식, 적아, 수확 등 작업 시에 전염이 되므로 주의하여야 하며 작업 전에는 반드시 손을 닦아야 한다.\n'
                        '- 전염원으로부터 격리된 지역에서 재배한다.',
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
