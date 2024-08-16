import 'package:flutter/material.dart';

class DictionSL extends StatelessWidget {
  const DictionSL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 시드름병',
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
                  '토마토 시드름병',
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
                    'assets/images/sl.jpg', // Adjust the path as needed
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '전국의 토마토 재배지역에서 고루 발생하여 많은 피해를 주고 있는 중요한 토양전염성 병해이다.\n'
                      '병원균은 병든 식물체의 조직속이나 토양속에서 균사나 후막포자 상태로 겨울을 지내고 1차 전염원이 된다.\n'
                      '물로 이동되는 거리는 매우 짧고, 주로 흙입자에 묻혀 농기구나 사람 등을 통해 먼 거리로 이동된다.\n'
                      '병원균은 주로 가는 뿌리나 상처를 통해 침입하는데, 포장 정식 직후에 감염되는 경우가 많다.\n'
                      '서늘한 지방에서는 병 발생이 적고, 감염되어도 병 증상이 잘 나타나지 않다가 생육 중기나 후기에 기온이 올라가면 병 증상이 나타난다.\n'
                      '병 발생에 적합한 온도는 24～30℃이며 16℃이하나 35℃이상에서는 거의 발생하지 않는다.\n'
                      '일반적으로 산성토양(pH 4.5～5.5)과 사질양토에서 발생이 많은데, 이는 토양수분의 불균형에 의해 식물체가 스트레스를 받아 약해지므로 병원균의 침입이 용이해지기 때문이다.\n'
                      '병원균은 토양중에 널리 분포하며, 겨울을 지내는 주체인 후막포자는 기주가 없이도 토양내에서 수 년간 생존하기 때문에 방제가 매우 어려운 병해이다.',
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
                  '병든 식물체는 생육이 억제되며 아랫 잎이 시들고 밑으로 처진다.\n'
                      '일반적으로 병 진전이 다소 느리고 아랫 잎이 약간 누렇게 변하여 서서히 죽는다.\n'
                      '주로 곁뿌리가 나온 부분으로 병원균이 침입하여 도관부를 침해한다.\n'
                      '기온이 상승한 낮 동안에 심하게 시들고, 아침과 저녁에는 다소 회복되기도 하는데, 심한 경우 줄기 내부의 도관은 아래 잎자루까지 암갈색으로 변하기도 한다.\n'
                      '땅가 부위의 줄기에 괴저증상이 나타나기도 하며, 진전되면 줄기의 전 둘레가 썩는다.\n'
                      '병든 그루의 과실은 작고 불량해진다.',
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
                  '- 이어짓기를 피하고 병 발생이 심한 토양은 5년 이상 돌려짓기를 해야한다.\n'
                      '- 석회시용으로 토양 산토를 높이고(pH 6.5～7.0) 토양선충이나 토양 미소동물에 의해 뿌리에 상처가 나지 않도록 한다.\n'
                      '- 미숙퇴비 시용을 금하고 토양 내 염류 농도가 높지 않게 주의한다.\n'
                      '- 토양을 장기간 담수하거나 태양열 소독을 하면 병원균의 밀도를 줄인다.',
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
