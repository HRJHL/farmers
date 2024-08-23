const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql2');
const multer = require('multer');
const path = require('path');

const app = express();
const port = 3000;

// 파일 업로드 설정 (Multer)
const upload = multer({ dest: 'uploads/' });

// MySQL 연결 설정
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'farmer'
});

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

// 'uploads' 폴더를 정적 파일로 제공
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// 회원가입 라우트
app.post('/join', (req, res) => {
  const { id, pw, nickname, email } = req.body;

  const query = 'INSERT INTO users (id, pw, nickname, email) VALUES (?, ?, ?, ?)';
  connection.query(query, [id, pw, nickname, email], (err, result) => {
    if (err) {
      console.error('회원가입 중 오류 발생:', err);
      res.status(500).json({ message: '회원가입 실패' });
    } else {
      console.log('회원가입 성공:', result);
      res.status(200).json({ message: 'User registered successfully' });
    }
  });
});

// 로그인 라우트
app.post('/login', (req, res) => {
  const { id, pw } = req.body;

  const query = 'SELECT * FROM users WHERE id = ? AND pw = ?';
  connection.query(query, [id, pw], (err, results) => {
    if (err) {
      console.error('로그인 중 오류 발생:', err);
      res.status(500).send('server error');
    } else if (results.length > 0) {
      console.log('로그인 성공');
      res.status(200).json({ id: results[0].id });
    } else {
      console.log('로그인 실패: 아이디 또는 비밀번호 불일치');
      res.status(401).send('failure');
    }
  });
});

// 사용자 정보 조회 라우트
app.get('/user-info/:id', (req, res) => {
  const userId = req.params.id;

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

app.get('/diary-entries/:userId', (req, res) => {
  const userId = req.params.userId;

  const query = 'SELECT * FROM diary WHERE userId = ? ORDER BY date DESC';
  connection.query(query, [userId], (err, results) => {
    if (err) {
      console.error('Error fetching entries:', err);
      res.status(500).json({ message: 'Failed to fetch entries' });
    } else {
      const baseUrl = 'http://192.168.0.76:3000/uploads/';
      const entries = results.map(entry => ({
        ...entry,
        imagePath: entry.imagePath ? baseUrl + entry.imagePath : null
      }));
      res.status(200).json(entries);
    }
  });
});


app.post('/save-entry', upload.single('image'), (req, res) => {
  const { title, content, date, userId } = req.body;
  const imagePath = req.file ? req.file.filename : null; // Use only the filename

  const query = 'INSERT INTO diary (title, content, date, userId, imagePath) VALUES (?, ?, ?, ?, ?)';
  connection.query(query, [title, content, date, userId, imagePath], (err, results) => {
    if (err) {
      console.error('Error saving entry:', err);
      return res.status(500).json({ message: 'Failed to save entry', error: err.message });
    }
    res.status(200).json({
      id: results.insertId,
      title,
      date,
      content,
      imagePath: imagePath ? `http://192.168.0.76:3000/uploads/${imagePath}` : null // Construct URL correctly
    });
  });
});



// 서버 실행
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
