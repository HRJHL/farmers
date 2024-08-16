import 'package:flutter/material.dart';

class DictionEB extends StatelessWidget {
  const DictionEB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title TextView
                  Text(
                    '토마토 반점병',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),

                  // ImageView
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFDDDDDD),
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(
                        'assets/images/eb.jpg', // Replace with your image asset
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Description TextView
                  Text(
                    '토마토반점위조바이러스는 1915년 호주 빅토리아주에서 처음 발생되어 1920년에는 호주 전역으로 확대되었으며, 1990년대에는 세네갈, 인디아, 스페인, 브라질 등 거의 세계 전역에 발생하고 있다.'
                        '\n우리나라에서는 2004년부터 2007년까지 토마토반점위조바이러스는 대부분 시설재배포장에서 발생을 하였지만, 2008년부터 충남 예산, 전남 영광 지역 등 노지재배 고추에서도 큰 피해를 주었고, 각 포장 단위에서 마을 단위로 확산되어 대발생하는 새로운 양상으로 확산되는 경향을 보이고 있다.'
                        '\n토마토반점위조바이러스는 종자 및 접촉 전염은 하지 않으며, 즙액전염 및 총채벌레에 의한 충개전염이 된다.'
                        '\n토마토반점위조바이러스는 총채벌레에 의해 영속전염을 하며, 매개충인 총채벌레는 세계적으로는 6종이 보고 되었으며, 국내는 꽃노랑총채벌레 등 4종이 국외에서 유입되어 서식하고 있다.'
                        '\n또한 총채벌레는 토양 중에서 번데기 및 성충 형태로 겨울기간 중에 존재하므로, 시설재배의 경우 전염원이 늘 만연해 있는 실정이다.'
                        '\n국내에 보고된 토마토반점위조바이러스의 기주식물은 고추, 토마토, 감자, 국화, 콩, 땅콩, 알타리무 등 25 종의 작물에서 발생을 하며, 중간기주로는 미국자리공, 별꽃, 쇠별꽃, 큰메꽃, 까마중, 명아주, 털쇠무릎, 계요등, 쇠비름, 박주가리 등 13종이 보고되어 있다.',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 16,
                      color: Color(0xFF666666),
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Divider
                  Container(
                    color: Color(0xFFCCCCCC),
                    height: 1,
                  ),

                  const SizedBox(height: 16),

                  // Symptoms TextView
                  Text(
                    '증상:',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),

                  // Symptoms Content TextView
                  Text(
                    '토마토반점위조바이러스에 감염된 작물체는 신초부위가 위축 또는 괴사되고 심하면 작물이 고사하게 되며, 이병된 과일은 원형반문이 나타나거나 기형이 되어 상품가치가 전혀 없는 치명적인 병이다.'
                        '\n토마토반점위조바이러스는 과채류 등 세계적으로 860여종의 식물에서 괴사, 생육저하, 품질퇴화, 생산량 감소 등을 유발하지만, 일반적으로 매개충이 가해한 부위에서 퇴록과 괴사 병반을 일으키거나 윤문모양의 반점, 줄모양 병반, 위조, 왜소, 얼룩, 줄기 괴사 등의 병징을 보이지만, 병징의 발현 양상은 기주, 감염 시기 및 온도 등 주변의 환경요인에 따라 다양하게 나타난다.',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 16,
                      color: Color(0xFF666666),
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Divider
                  Container(
                    color: Color(0xFFCCCCCC),
                    height: 1,
                  ),

                  const SizedBox(height: 16),

                  // Medic TextView
                  Text(
                    '방제 방법:',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),

                  // Medic Content TextView
                  Text(
                    '○ 토마토반점위조바이러스는 자가 육묘 농가뿐만 아니라 육묘장에서도 발생하여 감염된 묘가 전국적으로 판매되어 전국적 발생 확대 가능성이 매우 높으므로 발생지역간 육묘 이동을 최소화하고, 건전 종자 이용 및 육묘의 바이러스 검정이 필요하다.'
                        '\n○ 전 작물의 잔재물을 제거하고, 작물의 파종시기 및 이식시기를 조절한다.'
                        '\n○ 병든 식물체는 일찍 제거한다.'
                        '\n○ 주요 매개충인 꽃노랑총채벌레 방제를 위하여 발생초기부터 전용약제를 사용하여 철저하게 방제하여야 한다.',
                    style: TextStyle(
                      fontFamily: 'suite', // Replace with your font asset name
                      fontSize: 16,
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
