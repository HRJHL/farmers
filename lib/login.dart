import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'home.dart';
import 'join.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    textEditingController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 화면'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                hintText: '아이디',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textEditingController2,
              obscureText: true, // Hide password
              decoration: const InputDecoration(
                hintText: '비밀번호',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              String id = textEditingController.text.trim();
              String pw = textEditingController2.text.trim();

              String url = 'http://192.168.0.76:3000/login';

              String jsonData = jsonEncode({'id': id, 'pw': pw});
              try {
                var response = await http.post(
                  Uri.parse(url),
                  headers: <String, String>{
                    'Content-Type': 'application/json; charset=UTF-8',
                  },
                  body: jsonData,
                );
                if (response.statusCode == 200) {
                  String serverResponse = response.body;
                  if (serverResponse == 'success') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('로그인 실패: 아이디 또는 비밀번호가 일치하지 않습니다.'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('서버 오류: ${response.reasonPhrase}'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('오류 발생: $e'),
                    duration: Duration(seconds: 3),
                  ),
                );
              }
            },
            child: const Text('로그인'),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Join()),
              );
            },
            child: const Text('회원가입'),
          ),
        ],
      ),
    );
  }
}
