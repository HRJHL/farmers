import 'package:flutter/material.dart';

class DictionBS extends StatelessWidget {
  const DictionBS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '토마토 잎 세균성 점무늬병',
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
                  '토마토 잎 세균성 점무늬병',
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
                    'assets/images/bs.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Description Text
                Text(
                  '병징은 담갈색 내지 암갈색의 수침상에 소반점이 생긴다. 병반의 내부는 엷고 광택이 나며 병반의 외부는 황색으로 변한다. 병든 잎은 아래 잎부터 마른다. 과실에는 암갈색의 둥근 반점이 생기면서 그 주변이 수침상으로 된다. 표면은 처음에 밋밋하나 나중에는 병반 부위의 표피가 붕괴되어 거칠어지고 더뎅이 모양으로 된다. 어린 과실에만 발생하고 성숙과에는 발생하지 않는다.',
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
                  '병원균은 종자의 표면에 부착하여 전염하는 것이 가장 많으나, 피해 잎과 줄기가 함께 흙속에 남아서 토양전염도 된다. 감염의 적온은 20~25℃로, 15℃ 이하와 30℃ 이상에서는 거의 감염되지 않는다. 시설에서는 다습조건에서 비교적 저온이 되는 2~3월에 심하게 발생되는데 병원균이 천장의 물방울이 튀어 분산되는 조건에 기공이나 상처로 침입한다.\n\n'
                      '시설재배에서는 3~5월 사이에 환기가 불량하고 다습한 상태의 하우스에서 주로 발생하고 노지재배에서는 강우가 많아 다습조건이 계속될 때 많이 발생한다. 고추에 발생하는 더뎅이병과 동일하기 대문에 고추밭 근처에서 심하게 발병되는 경우도 있다.\n\n'
                      '병원균은 피해 잎이나 줄기에 붙어 토양 중에서 월동하고 그 후로는 공기전염한다. 가뭄이 계속되다가 강우가 있으면 발병이 많아지고 표토(겉흙)가 얕은 지대나 퇴비를 쓰지 않는 밭에서 많이 발생한다.',
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
                  '종자를 50℃의 물에 25분간 침지하여 소독하고, 재배는 배수가 잘 되는 비옥한 토지를 선택하여 퇴비를 많이 넣어서 재배한다. 하우스에서는 저온기라도 다습하면 발생하게 되므로 환기와 통풍에 힘쓰고 급격한 온도변화가 없도록 한다.',
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
