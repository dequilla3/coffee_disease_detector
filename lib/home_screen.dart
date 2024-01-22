import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pytorch/flutter_pytorch.dart';
import 'package:flutter_pytorch/pigeon.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ModelObjectDetection _objectModel;
  final ImagePicker _picker = ImagePicker();

  File? _image;
  bool objectDetection = false;
  List<ResultObjectDetection?> objDetect = [];

  Future loadModel() async {
    String pathObjectDetectionModel = "assets/models/yolov5s.torchscript";
    _objectModel = await FlutterPytorch.loadObjectDetectionModel(
      pathObjectDetectionModel,
      80,
      640,
      640,
      labelPath: "assets/labels/labels.txt",
    );
  }

  Future runObjectDetectionFromCamera() async {
    //pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    objDetect = await _objectModel.getImagePrediction(
        await File(image!.path).readAsBytes(),
        minimumScore: 0.50,
        IOUThershold: 0.3);

    setState(() {
      _image = File(image.path);
    });
  }

  Future runObjectDetectionFromGallery() async {
    //pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    objDetect = await _objectModel.getImagePrediction(
      await File(image!.path).readAsBytes(),
      minimumScore: 0.1,
      IOUThershold: 0.3,
    );

    setState(() {
      _image = File(image.path);
    });
  }

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "OBJECT DETECTOR APP",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image with Detections....
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: objDetect.isNotEmpty
                      ? _image == null
                          ? const Center(child: Text('No image selected.'))
                          : _objectModel.renderBoxesOnImage(_image!, objDetect)
                      : _image == null
                          ? const Center(child: Text('No image selected.'))
                          : Image.file(_image!),
                ),
              ),
              //Button to click pic
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      runObjectDetectionFromCamera();
                    },
                    child: const Icon(Icons.camera),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      runObjectDetectionFromGallery();
                    },
                    child: const Icon(Icons.photo),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
