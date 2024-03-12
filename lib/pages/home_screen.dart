import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/config/app_routes.dart';
import 'package:image_processing/provider/predict_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker _picker = ImagePicker();
  String? className;
  double? score;
  File? _image;

  Widget logo() {
    return Center(child: Image.asset("assets/icon/coffee-cup.jpg"));
  }

  Future pickImage(ImageSource imageSource) async {
    try {
      EasyLoading.show(status: "Picking image...");
      //pick an image
      final XFile? xfile = await _picker.pickImage(source: imageSource);
      EasyLoading.dismiss();

      if (xfile != null) {
        var image = File(xfile.path);

        EasyLoading.show(status: "Predict image...");
        var res = await predictImage(image);
        className = res['className'];
        score = res['score'];
        EasyLoading.dismiss();

        setState(() {
          _image = image;
        });
      }
    } catch (e) {
      print(e);
      EasyLoading.dismiss();
    }
  }

  void pushDetailRoute() {
    var classNameLowerCase = className!.toLowerCase();
    if (classNameLowerCase.contains('borer')) {
      Navigator.of(context).pushNamed(AppRoutes.berryBorrer);
    } else if (classNameLowerCase.contains('catterpillar')) {
      Navigator.of(context).pushNamed(AppRoutes.catterpillar);
    } else if (classNameLowerCase.contains('rust')) {
      Navigator.of(context).pushNamed(AppRoutes.leafRust);
    } else if (classNameLowerCase.contains('spot')) {
      Navigator.of(context).pushNamed(AppRoutes.leafBerrySpot);
    } else if (classNameLowerCase.contains('mold')) {
      Navigator.of(context).pushNamed(AppRoutes.sootyMold);
    } else if (classNameLowerCase.contains('insect')) {
      Navigator.of(context).pushNamed(AppRoutes.scaleInsect);
    }
  }

  Future<Map<String, dynamic>> predictImage(File image) async {
    return await context.read<PredictProvider>().predictImage(image);
  }

  @override
  void initState() {
    super.initState();
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
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            //Image with Detections....
            SizedBox(
              height: double.infinity,
              child: _image == null
                  ? logo()
                  : Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    ),
            ),
            Positioned(
              top: 20,
              left: 50,
              right: 50,
              child: className != null
                  ? ElevatedButton(
                      onPressed: () {
                        pushDetailRoute();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(14),
                      ),
                      child: Text("$className $score"),
                    )
                  : Container(),
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
                      pickImage(ImageSource.camera);
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
                      pickImage(ImageSource.gallery);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const FaIcon(FontAwesomeIcons.image),
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
