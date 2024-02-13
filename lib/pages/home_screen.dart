import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pytorch/flutter_pytorch.dart';
import 'package:flutter_pytorch/pigeon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/components/render_box_on_image.dart';

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

  Widget logo() {
    return Center(child: Image.asset("assets/icon/coffee-cup.jpg"));
  }

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
    EasyLoading.show(status: "Picking image...");
    //pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    EasyLoading.dismiss();

    EasyLoading.show(status: "Detecting...");
    objDetect = await _objectModel.getImagePrediction(
      await File(image!.path).readAsBytes(),
      minimumScore: 0.1,
      IOUThershold: 0.5,
      boxesLimit: 2,
    );
    EasyLoading.dismiss();

    setState(() {
      _image = File(image.path);
    });
  }

  Future runObjectDetectionFromGallery() async {
    EasyLoading.show(status: "Picking image...");
    //pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    EasyLoading.dismiss();

    EasyLoading.show(status: "Detecting...");
    objDetect = await _objectModel.getImagePrediction(
      await File(image!.path).readAsBytes(),
      minimumScore: 0.1,
      IOUThershold: 0.3,
      boxesLimit: 2,
    );
    EasyLoading.dismiss();

    setState(() {
      _image = File(image.path);
    });
  }

  @override
  void initState() {
    super.initState();
    loadModel();
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            FaIcon(FontAwesomeIcons.seedling),
            SizedBox(width: 5),
            Text(
              "Coffection",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            //Image with Detections....
            SizedBox(
              width: double.infinity,
              child: objDetect.isNotEmpty
                  ? _image == null
                      ? logo()
                      : RenderBoxOnImage(
                          image: _image!,
                          recognitions: objDetect,
                        )
                  : _image == null
                      ? logo()
                      : Image.file(_image!),
            ),
            //Button to click pic
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      runObjectDetectionFromCamera();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const FaIcon(FontAwesomeIcons.camera),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      runObjectDetectionFromGallery();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const FaIcon(FontAwesomeIcons.image),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      runObjectDetectionFromGallery();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const FaIcon(FontAwesomeIcons.eye),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
