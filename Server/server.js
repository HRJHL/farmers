const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql2');

const app = express();
const port = 3000;

// MySQL 연결 설정
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'farmer'
});

// MySQL 연결 확인
connection.connect((err) => {
  if (err) {
    console.error('MySQL 연결 오류:', err);
    return;
  }
  console.log('MySQL에 연결되었습니다.');
});

// 미들웨어 설정
app.use(bodyParser.json());
app.use(cors());

// 회원가입 라우트
app.post('/join', (req, res) => {
  const { id, pw, nickname, email } = req.body;

  // 사용자 입력 검증 (간단한 예시)
  if (!id || !pw || !nickname || !email) {
    return res.status(400).json({ message: '모든 필드를 입력하세요' });
  }

  // SQL 쿼리 실행
  const query = 'INSERT INTO users (id, pw, nickname, email) VALUES (?, ?, ?, ?)';
  connection.query(query, [id, pw, nickname, email], (err, result) => {
    if (err) {
      console.error('회원가입 중 오류 발생:', err);
      res.status(500).json({ message: '회원가입 실패' });
    } else {
      console.log('회원가입 성공:', result);
      res.status(200).json({ message: '회원가입 성공' });
    }
  });
});

// 로그인 라우트
app.post('/login', (req, res) => {
  const { id, pw } = req.body;

  // 사용자 입력 검증 (간단한 예시)
  if (!id || !pw) {
    return res.status(400).json({ message: '아이디와 비밀번호를 입력하세요' });
  }

  // SQL 쿼리 실행
  const query = 'SELECT * FROM users WHERE id = ? AND pw = ?';
  connection.query(query, [id, pw], (err, results) => {
    if (err) {
      console.error('로그인 중 오류 발생:', err);
      res.status(500).json({ message: '서버 오류' });
    } else if (results.length > 0) {
      console.log('로그인 성공');
      // 로그인 성공 시 사용자 ID를 반환
      res.status(200).json({ id: results[0].id });
    } else {
      console.log('로그인 실패: 아이디 또는 비밀번호 불일치');
      res.status(401).json({ message: '로그인 실패: 아이디 또는 비밀번호 불일치' });
    }
  });
});

// 사용자 정보 조회 라우트
app.get('/user-info/:id', (req, res) => {
  const userId = req.params.id;

  // SQL 쿼리 실행
  const query = 'SELECT nickname, email FROM users WHERE id = ?';
  connection.query(query, [userId], (err, results) => {
    if (err) {
      console.error('사용자 정보 조회 중 오류 발생:', err);
      res.status(500).json({ message: '사용자 정보 조회 실패' });
    } else if (results.length > 0) {
      res.status(200).json(results[0]);
    } else {
      res.status(404).json({ message: '사용자 정보 없음' });
    }
  });
});

// 서버 실행
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
