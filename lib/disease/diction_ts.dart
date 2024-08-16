import 'package:flutter/material.dart';

class DictionTS extends StatelessWidget {
  const DictionTS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 갈색무늬병',
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
                    '토마토 갈색무늬병',
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
                      'assets/images/ts.jpg', // Adjust the path as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Description Text
                  Text(
                    '병든 잎에서 균사 또는 자낭반의 형태로 겨울을 지나 자낭포자와 분생포자가 1차 전염원이 된다.\n\n'
                        '이 병의 발생은 분생포자나 자낭포자의 공기전염에 의하며 포자비산은 5월부터 시작되어 10월까지 계속되는데 7월 이후 증가하여 8월에 가장 많은 양이 비산된다.\n\n'
                        '잎에서는 빠르면 6월 중,하순에 병징이 나타나기 시작하며 7월 상순경에는 과수원에서 관찰할 수 있다.\n\n'
                        '8월 이후 급증하여 9～10월까지 계속된다.\n\n'
                        '여름철에 비가 많고 기온이 낮은 해에 발생이 많으며 배수불량, 밀식, 농약살포량 부족인 사과원에서 발생이 많다.\n\n'
                        '사과나무에서 조기낙엽을 가장 심하게 일으키는 병이다.\n\n'
                        '포자비산은 5월부터 10월까지 이루어지는데 포자비산량 조사를 통해서 초기 발생시기와 이후의 발생정도를 예측할 수 있다.\n\n'
                        '사과원에서 보통 빠르면 6월 중하순, 늦어도 7월 상순에는 관찰할 수 있기 때문에 초기 병징의 발현을 방제시작의 신호로 보면 된다.\n\n'
                        '이 병은 일본, 한국, 중국, 인도네시아, 캐나다, 브라질 등지에서 발생 하는데 우리나라에서는 1916년 수원, 1917년 나주, 대전, 대구 등지에서 최초 발생이 보고된 이래 1960년대까지 우리나라 전역에 걸쳐 발생하여 탄저병과 더불어 그 피해가 극심하였다.\n\n'
                        '1960년대까지는 주 재배 사과 품종이 갈색무늬병에 감수성인 홍옥과 국광이었으나 1970년대 이후는 후지 등의 신 품종으로 대체하여 재배하였고 농약의 개발로 1980년대까지는 갈색무늬병의 발생은 크게 문제되지 않았다.\n\n'
                        '그러나 1990년대에 들어서면서 주 품종인 후지 품종과 다른 신품종에도 발생하기 시작하여 매년 발병율이 증가하고 있는 실정이며 농약의 관행방제 사과원에서도 많이 발생되어 조기낙엽 등의 피해를 일으키고 있다.\n\n'
                        '특히 7, 8월에 강우량이 많고 저온이었던 1993년에 대발생하여 큰 피해를 입었다.\n\n'
                        '그 이후 계속해서 여름철에 많이 발생하고 있으며 1998년에는 봄철 고온, 다우로 인해 병 발생이 5월부터 시작되었고 여름철엔 비 온 날이 계속되었으며 9～10월 고온조건이 유지 되므로서 10월 평균 발병 엽율 50% 이상, 발생 과수원율 100%로 그 피해가 심각하였다.',
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
                    '주로 잎에 발생하나 드물게 과일에도 발생한다.\n\n'
                        '잎에는 처음 자색 또는 흑갈색의 작은 반점이 형성, 점차 확대되어 갈색 또는 흑갈색의 대형 병반이 형성되며, 병반 둘레가 녹색으로 남고, 다른 부위는 황색으로 변하여 조기 낙엽된다.\n\n'
                        '병반에 보이는 검고 작은 반점은 포자층으로, 그 위에 분생포자가 형성된다.\n\n'
                        '잎에 원형의 흑갈색 반점이 형성되어 점차 확대되고 직경 1㎝ 정도의 원형~부정형 병반이 되며 병반위에는 흑갈색 소립이 많이 형성됨. 병든 잎은 2~3주 후에 황색으로 변하여 일찍 낙엽이 되나 황변하지 않고 그대로 나무상에 남아 있는 것도 있다.\n\n'
                        '병반이 확대되어 여러 개가 합쳐지면 부정형으로 되며, 발병 후기에는 병반 이외의 건전부위가 황색으로 변하고 병반 주위가 녹색을 띄게 되어 경계가 뚜렷해진다.',
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
                    '- 관수 및 배수를 철저히 하고 균형 있는 시비를 한다.\n\n'
                        '- 전정을 통해 수관내 통풍과 통광을 원활히 하고, 병에 걸린 낙엽을 모아 태우거나 땅 속 깊이 묻어 전염원을 제거한다.\n\n'
                        '- 약제에 의한 방제는 6월 중순경(발병초)부터 8월까지 가능한 강우 전에 정기적으로 적용약제를 수관내부까지 골고루 묻도록 충분량을 살포한다.\n\n'
                        '- 과수원에서 초기병반이 보이는 즉시 약제를 살포한다.\n\n'
                        '이 병은 한번 발생하면 이후 방제하기가 매우 곤란한 병이므로 예방에 초점을 맞추어 방제한다.',
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