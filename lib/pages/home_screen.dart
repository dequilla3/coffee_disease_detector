import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/components/app_text_field.dart';
import 'package:image_processing/config/app_routes.dart';
import 'package:image_processing/config/app_url.dart';
import 'package:image_processing/provider/predict_provider.dart';
import 'package:image_processing/style/app_colors.dart';
import 'package:localstore/localstore.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final serverIpController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  List<dynamic> models = [];
  final db = Localstore.instance;

  String? className;
  double? score;
  File? _image;

  Widget logo() {
    return Center(child: Image.asset("assets/icon/coffee-cup.jpg"));
  }

  List<Widget> buttonPredicted() {
    List<ElevatedButton> elevatedButtons = [];
    elevatedButtons = [];
    for (var model in models) {
      var className = model['className'];
      var score = model['score'];
      if (score > 0) {
        elevatedButtons.add(
          ElevatedButton(
            onPressed: () {
              pushDetailRoute(className);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue.withOpacity(0.5),
              padding: const EdgeInsets.all(10),
              minimumSize: const Size(180, 30),
              side: const BorderSide(
                color: Colors.black, // Specify the border color
                width: 0.3, // Specify the border width
              ),
            ),
            child: Text(
                "${className.contains('Bery Spot') ? 'Leaf and Berry Spot' : className} $score"),
          ),
        );
      }
    }
    // return elevatedButtons;
    return elevatedButtons;
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
        models = res['models'];
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

  void pushDetailRoute(String className) {
    var classNameLowerCase = className.toLowerCase();
    if (classNameLowerCase.contains('borer') ||
        classNameLowerCase.contains('borrer')) {
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

  void loadIps() async {
    EasyLoading.show(status: "Initializing . . .");
    final items = await db.collection('ips').get();
    if (items != null) {
      var baseIp = items['/ips/ips']['baseIp'];
      serverIpController.text = baseIp;
      AppUrl.setBaseUrl(baseIp);
    }
    EasyLoading.dismiss();
  }

  saveIp() async {
    EasyLoading.show(status: "Saving IP. . .");

    await db.collection('ips').doc("ips").set({
      'baseIp': serverIpController.text,
    });

    AppUrl.setBaseUrl(serverIpController.text);

    EasyLoading.dismiss();
  }

  @override
  void initState() {
    super.initState();
    loadIps();
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
              left: 10,
              child: models.isNotEmpty
                  ? Column(
                      children: buttonPredicted(),
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
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return Container(
                              color: const Color.fromRGBO(0, 0, 0, 0),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22),
                                      topRight: Radius.circular(22),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 12),
                                      const Text(
                                        "Setup Server",
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      const SizedBox(height: 12),
                                      AppTextField(
                                        hint: "Base URL Server IP",
                                        controller: serverIpController,
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        height: 40,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            try {
                                              saveIp();
                                              Navigator.pop(context);
                                            } catch (e) {
                                              print(e);
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.primary,
                                            foregroundColor:
                                                const Color.fromARGB(
                                                    255, 255, 255, 255),
                                          ),
                                          child: const Text('Save'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const FaIcon(FontAwesomeIcons.server),
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
