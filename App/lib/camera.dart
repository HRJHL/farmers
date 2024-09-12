import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  Interpreter? _interpreter;
  bool _isDetecting = false;
  bool _isModelLoaded = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      final firstCamera = cameras.first;

      _cameraController = CameraController(
        firstCamera,
        ResolutionPreset.medium,
      );

      await _cameraController!.initialize();
      await _loadModel(); // Ensure model is loaded before starting image stream

      setState(() {
        _isModelLoaded = true;
      });

      _cameraController!.startImageStream((CameraImage image) {
        if (!_isDetecting && _isModelLoaded) {
          _isDetecting = true;
          _runModelOnFrame(image).then((_) {
            _isDetecting = false;
          });
        }
      });
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  Future<void> _loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('model.tflite');
      if (_interpreter == null) {
        print('Interpreter initialization failed.');
      } else {
        print('Model loaded successfully.');
      }
    } catch (e) {
      print('Error loading model: $e');
    }
  }

  Future<void> _runModelOnFrame(CameraImage image) async {
    if (_interpreter == null) {
      print('Interpreter is not initialized.');
      return;
    }

    try {
      final img.Image convertedImage = img.Image.fromBytes(
        image.width,
        image.height,
        _convertYuvToRgb(image),
        format: img.Format.rgb,
      );

      final Uint8List imageBytes = Uint8List.fromList(img.encodePng(convertedImage));

      // Adjust these dimensions based on your model's expected input
      final int inputWidth = image.width;
      final int inputHeight = image.height;

      // Pre-process input
      final inputTensor = imageBytes.buffer.asUint8List();

      // Allocate buffer for output
      final outputShape = [1, 10];  // Adjust based on your model's output
      final output = List.filled(outputShape.reduce((a, b) => a * b), 0.0);

      // Run inference
      _interpreter?.run(inputTensor, output);

      // Process results
      print('Detection results: $output');
      // TODO: Update UI with the results if necessary
    } catch (e) {
      print('Error running model on frame: $e');
    }
  }

  Uint8List _convertYuvToRgb(CameraImage image) {
    final int width = image.width;
    final int height = image.height;
    final planeY = image.planes[0];
    final planeU = image.planes[1];
    final planeV = image.planes[2];

    final int ySize = width * height;
    final int uvWidth = (width / 2).toInt();
    final int uvHeight = (height / 2).toInt();

    // YUV to RGB conversion
    final Uint8List rgbBytes = Uint8List(width * height * 3);

    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        final int yIndex = y * width + x;
        final int uvIndex = (y ~/ 2) * uvWidth + (x ~/ 2);

        final int yValue = planeY.bytes[yIndex];
        final int uValue = planeU.bytes[uvIndex];
        final int vValue = planeV.bytes[uvIndex];

        final int u = uValue - 128;
        final int v = vValue - 128;

        final int r = (yValue + (1.402 * v)).clamp(0, 255).toInt();
        final int g = (yValue - (0.344 * u) - (0.714 * v)).clamp(0, 255).toInt();
        final int b = (yValue + (1.772 * u)).clamp(0, 255).toInt();

        final int index = (y * width + x) * 3;
        rgbBytes[index] = r;
        rgbBytes[index + 1] = g;
        rgbBytes[index + 2] = b;
      }
    }

    return rgbBytes;
  }

  @override
  void dispose() {
    _cameraController?.stopImageStream();  // 이미지 스트림 중지
    _cameraController?.dispose();          // 카메라 컨트롤러 해제
    _interpreter?.close();                 // 인터프리터 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Camera'),
          backgroundColor: Colors.green[600],
        ),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        backgroundColor: Colors.green[600],
      ),
      body: CameraPreview(_cameraController!),
    );
  }
}
