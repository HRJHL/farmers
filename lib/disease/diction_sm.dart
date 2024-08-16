import 'package:flutter/material.dart';

class DictionSM extends StatelessWidget {
  const DictionSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 점박이 응애',
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
                  '토마토 점박이 응애',
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
                    'assets/images/sm.jpg', // Adjust the path as needed
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '응애는 다리가 3쌍인 곤충과 달리 4쌍으로 거미강에 속한다. 응애에는 종류가 많으며 잎을 먹는 응애도 있고 천적인 응애도 있다. 여기서 응애란 일반인이 사용하고 있는 의미로 잎을 가해하는 응애를 지칭한다. 응애 종류는 점박이응애 등 여러종류가 있다. 이들 응애는 딸기, 장미, 수박, 참외, 가지, 사과, 배, 감귤, 장미, 거베라, 화목류 등 원예작물에 크게 피해를 해충이다. 2차 세계대전 후 각종 해충에 대해 효과가 탁월한 DDT 등 유기합성 농약이 나오면서 농약에 내성이 있는 응애가 출현하고 (Smith and Fulton, 1951), 천적이 없어져 그간 문제가 되지 않았던 잠재해충이 문제 해충화 된 것으로 알려졌다. 최근 시설 재배가 많아지면서 점박이응애 등 응애의 발생은 비 가림과 보온 효과로 더 많아지고 있다. 그간 해충방제는 농약에 의한 방제 위주로 부작용이 많아 1970년대부터 사용할 수 있는 여러 가지 방제 수단을 이용하여 경제적으로 손실을 주지 않을 정도로 해충의 발생을 억제시키려는 병해충종합관리(IPM)에 방제 전략을 두고 있다.',
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
                  '작물의 잎을 가해하는 응애는 점박이응애 (Tetranychidae urticae), 차응애 (T. kanzawai), 차먼지응애(Polyphagotarsonemus latus) 등이 있다.\n'
                      '응애류는 성충 뿐만 아니라 유충과 약충도 식물의 조직에서 세포조직을 빨아먹어 피해를 준다. 피해세포는 황변하고 심하면 작은 백황색 반점이 나타난다. 피해 잎은 엽녹소가 파괴되고 광합성을 할 수 없어 결국은 식물체는 죽고 만다. 피해가 심하면 식물체를 거미줄로 덮기도 하고, 먹을 것을 찾아 땅으로 내려와 다른 작물로 이동한다. 기주는 가지과작물, 박과작물, 딸기, 콩류, 과수, 화훼류, 약초류 등 아주 많다.\n'
                      '점박이응애는 좌우 양쪽 등에 검은 무늬가 박혀 있고, 차응애는 붉은 빛을 띄고 앞다리의 끝이 황적색이다. 또한 휴면하는 점박이응애 암컷은 황적색이고 휴면 하는 차응애는 붉은색이다. 점박이응애 발육은 알, 유충, 제1약충(전약충), 제2약충(후약충), 성충의 5단계가 있다. 알은 둥글고, 직경이 약 0.14㎜이고, 처음에는 투명한 색을 띄나 점차 불투명해져 밀짚 색을 띄면 부화한다. 산란 장소는 거의 잎 뒷면이다. 그림 1은 딸기에서 점박이응애의 알, 약충, 성충암컷의 모습이다.\n'
                      '응애의 발육기간은 온도와 상대습도, 작물, 잎의 연령 등에 따라서 변한다. 이 중에서 온도가 가장 중요하다. 발육적온은 20∼28℃, 최적습도 50∼80%이다. 9℃이하에서는 발육하지 않고, 40℃이상에서는 발육에 해롭다.\n'
                      '잎응애 밀도는 암수의 비율이 3:1정도로 구성된다. 성충은 하루에 2∼6개, 68일간 100여개 이상 알을 낳는다. 단일, 저온, 영양 부적합 등 나쁜 환경에서 암컷은 휴면에 들어간다. 휴면에 들어간 암컷은 3∼5일만에 황적색으로 변한다.',
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
                  '가. 경종적 방제\n\n'
                      '해충의 경종적 방제란 해충의 발생원을 줄이고, 외부로부터 침입을 억제하며, 해충의 발생에 부적합한 재배환경으로 조절하고, 해충의 발생 시기를 피하여 작물을 재배하며, 내충성 품종을 재배하는 등의 방법을 통하여 해충의 발생을 억제할 수 있는 방제법이다. 이러한 방제수단은 하나 하나로 보면 크지 않으나 이들 방제법을 실천하면 방제효과를 크게 거둘 수 있다.\n\n'
                      '(1) 포장 선택\n\n'
                      '논 한가운데 시설 채소를 재배하면 처음 1∼2년 동안은 응애 발생이 없거나 심하지 않다. 응애 발생이 우려되는 딸기, 참외 등 작물을 재배할 때는 이들 작물과 격리된 곳에서 재배하면 응애 발생을 줄일 수 있다. 그러나 이와 반대로 인근 포장에 응애 발생이 많은 작물을 재배하면 응애 발생이 문제될 수 있다. 가능하다면 주변에 응애 발생이 없는 포장에서 작물을 재배하면 응애 발생을 줄일 수 있다.\n\n'
                      '(2) 묘에서 침입 방지\n\n'
                      '시설작물에 발생하는 응애의 발생은 시설 내에 있는 것이 발생하는 경우보다 묘에 묻어서 오는 경우가 많다. 묘에서 응애 발생 확인은 쉽지 않으므로 일단 정식하기 전에 살비제를 충분히 살포하여 방제해야 한다. 육묘 면적은 많지 않기 때문에 본 포에서 방제하는 것 보다 쉽고 경제적이다. 딸기에서 점박이응애 발생을 보면 모종에서 점박이응애가 발생한 지점으로부터 증식해 넓혀 나간다. 시설 작물에서 응애 방제의 가장 중요한 것은 응애 등 해충이 없는 깨끗한 모종을 재배해야하는 점이다. 응애 발생은 육묘를 어디에서 했느냐에 따라서도 다를 수 있다. 시설은 노지 보다 고온이고 비 가림이 되므로 응애 발생에 좋은 조건이다. 딸기에서 보면 탄저병 방제를 위해 노지 육묘를 지양하고 시설에서 육묘를 하나 점박이응애는 시설 조건에서 발생이 많으므로 시설 육묘 시는 응애 방제에 더욱 주의를 기울어야 할 것이다.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Suite',
                    color: Color(0xFF666666),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
