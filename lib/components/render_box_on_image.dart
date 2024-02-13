import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pytorch/pigeon.dart';

class RenderBoxOnImage extends StatelessWidget {
  final File image;
  final List<ResultObjectDetection?> recognitions;
  final Color? boxesColor;
  final bool showPercentage;

  const RenderBoxOnImage(
      {super.key,
      required this.image,
      required this.recognitions,
      this.boxesColor,
      this.showPercentage = true});

  @override
  Widget build(BuildContext context) {
    Widget renderBoxesOnImage(
        File image, List<ResultObjectDetection?> recognitions,
        {Color? boxesColor, bool showPercentage = true}) {
      return LayoutBuilder(builder: (context, constraints) {
        debugPrint(
            'Max height: ${constraints.maxHeight}, max width: ${constraints.maxWidth}');
        double factorX = constraints.maxWidth;
        double factorY = constraints.maxHeight;
        return Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              width: factorX,
              height: factorY,
              child: Image.file(
                image,
                fit: BoxFit.fill,
              ),
            ),
            ...recognitions.map((re) {
              if (re == null) {
                return Container();
              }
              Color usedColor;
              double score = re.score * 100;
              if (boxesColor == null) {
                //change colors for each label
                if (score < 100 && score >= 80) {
                  usedColor = Colors.green;
                } else if (score < 80 && score >= 60) {
                  usedColor = Colors.yellow;
                } else if (score < 60 && score >= 50) {
                  usedColor = Colors.blue;
                } else {
                  usedColor = Colors.red;
                }
              } else {
                usedColor = boxesColor;
              }

              return Positioned(
                left: re.rect.left * factorX,
                top: re.rect.top * factorY - 20,
                child: GestureDetector(
                  onTap: () {
                    debugPrint(re.className);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 22,
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                          color: usedColor,
                          border: Border.all(color: usedColor, width: 1),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          "${re.className!.toUpperCase()} ${showPercentage ? "${(re.score * 100).toStringAsFixed(2)}%" : ""}",
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: re.rect.width.toDouble() * factorX,
                        height: re.rect.height.toDouble() * factorY,
                        decoration: BoxDecoration(
                          color: usedColor.withOpacity(0.3),
                          border: Border.all(color: usedColor, width: 1),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList()
          ],
        );
      });
    }

    return renderBoxesOnImage(image, recognitions,
        boxesColor: boxesColor, showPercentage: showPercentage);
  }
}
