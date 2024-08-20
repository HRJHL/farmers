import 'package:flutter/material.dart';

class DictionLB extends StatelessWidget {
  const DictionLB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 역병',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Suite',
          ),
        ),
        backgroundColor: Color(0xFF5B9A77),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                // Title Text
                Text(
                  '토마토 역병',
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
                    'assets/images/lb.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '토마토 뿌리썩음을 일으키는 역병균은 3종으로 이들 모두 크로미스타(Chromista)계의 난균문에 속하며, 이들 중 고추 역병균인 P. capsici의 병원성이 가장 강하다.\n\n'
                      '병원균은 물을 매우 좋아하는 반 수생균으로 물속에서 유주자낭을 쉽게 형성하고 여기서 유출된 유주자는 2개의 편모를 가지고 있어 물 속을 자유롭게 유영하며 전반된다.\n\n'
                      '육묘상에서부터 전 생육기에 발생되며 시설재배에서는 연중 발생된다.\n'
                      '노지에서는 6월 초순부터 발생되며, 장마기에 주로 전반되어 8, 9월에 발생이 심하다.\n'
                      '토양이 장기간 과습하거나 배수가 불량하고 포장이 침수되면 병 발생이 조장된다.\n'
                      '병원균은 종자전염이 가능하나 대부분의 전염원은 토양에서 유입된다.\n'
                      '병원균은 병든 식물체의 조직에서 균사나 난포자 상태로 겨울을 지낸 후 다시 발아하여 1차 전염원이 되는데, P. capsici와 P. drechsleri는 전국적으로 널리 퍼져 있고 매우 넓은 기주를 가지고 있다.\n'
                      'P. capsici는 거의 모든 가지과와 박과 채소를 침해하며, P. drechsleri는 주로 박과 작물과 약초류를 침해한다.\n'
                      'P. megasperma는 국내 일부 지역에서만 발생되었으며 토마토에 대한 병원성도 다른 두 균에 비해 매우 미약하다.',
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
                  '유묘기부터 전 생육기에 발생되며, 주로 뿌리와 땅가 줄기부위에 발생되지만 병원균이 빗물에 튀어 올라 열매 등의 지상부를 침해하기도 한다.\n\n'
                      '현재까지 3종의 역병균이 토마토 뿌리썩음 역병을 일으키는 것으로 확인되었는데, 균 종류별 재배 품종별 병 증상은 매우 유사하다.\n'
                      '유묘기에 감염되면 그루 전체가 심하게 시들고 곧 죽으며 생육 중기나 후기에 감염되면 초기에는 아랫잎부터 약간 누렇게되어 시들고 말라 죽는다.\n'
                      '병든 그루의 땅가 줄기와 굵은 뿌리는 수침상으로 썩으며 껍질을 벗겨 보면 줄기 내부가 연한 갈색이나 암갈색으로 썩어 있다.\n'
                      '간혹 지표면 가까이에 매달린 과실에도 수침상의 병반이 나타나 회갈색의 큰 원형병반으로 썩으며 다습한 환경에서 흰 곰팡이 균사체와 포자가 많이 형성된다.',
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
                  '- 작물이 재배되지 않은 건전토양으로 육묘한다.\n\n'
                      '- 토양이 오랜기간 과습하거나 물에 잠기지 않도록 하고 물빼기를 철저히 한다.\n\n'
                      '- 병든 포기는 뿌리주변 흙과 함께 조기에 제거하여 포장 밖으로 버리거나 땅 속 깊이 묻고, 등록약제를 병든포기 주변 토양에 흠뻑 관주한다.\n\n'
                      '- 역병이 심하게 발생된 포장은 3년 이상 비기주 작물로 돌려짓기를 한다.',
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
