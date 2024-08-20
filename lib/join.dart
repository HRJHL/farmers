import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login.dart';

class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  bool _isLoading = false;
  String _message = '';
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '회원가입',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen, // Updated color
                  ),
                ),
                const SizedBox(height: 32),
                _buildTextField(
                  controller: _idController,
                  hintText: '아이디',
                  icon: Icons.person,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _passwordController,
                  hintText: '비밀번호',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _confirmPasswordController,
                  hintText: '비밀번호 확인',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _nicknameController,
                  hintText: '닉네임',
                  icon: Icons.person_outline,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _emailController,
                  hintText: '이메일',
                  icon: Icons.email,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _isLoading ? null : _sendDataToServer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen, // Use a refreshing green color
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : const Text('회원가입'),
                ),
                const SizedBox(height: 16),
                Text(
                  _message,
                  style: TextStyle(
                    color: _message.startsWith('서버로 데이터 전송 성공') ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    IconData? icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon, color: Colors.lightGreen) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      ),
    );
  }

  void _sendDataToServer() async {
    setState(() {
      _isLoading = true;
      _message = '';
    });

    // 서버 URL
    String url = 'http://192.168.0.76:3000/join'; // Adjust the URL for your join endpoint

    // 입력된 아이디, 비밀번호, 비밀번호 확인, 닉네임, 이메일 가져오기
    String id = _idController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();
    String nickname = _nicknameController.text.trim();
    String email = _emailController.text.trim();

    // 비밀번호 확인
    if (password != confirmPassword) {
      setState(() {
        _message = '비밀번호와 비밀번호 확인이 일치하지 않습니다.';
      });
      setState(() {
        _isLoading = false;
      });
      return;
    }

    // 데이터를 JSON 형식으로 만듭니다.
    String jsonData = jsonEncode({
      'id': id,
      'pw': password,
      'nickname': nickname,
      'email': email,
    });

    try {
      // POST 요청 보내기
      var response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonData,
      );

      // 요청 완료 후 처리
      if (response.statusCode == 200) {
        setState(() {
          _message = '서버로 데이터 전송 성공: ${response.body}';
        });
        // 성공 시 로그인 페이지로 이동
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else {
        setState(() {
          _message = '서버로 데이터 전송 실패: ${response.reasonPhrase}';
        });
      }
    } catch (e) {
      setState(() {
        _message = '서버 연결 오류: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
