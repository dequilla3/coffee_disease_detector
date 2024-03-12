import 'dart:io';

import 'package:image_processing/data/service/predict_service.dart';
import 'package:image_processing/provider/provider_base.dart';

class PredictProvider extends ProviderBase {
  Future<Map<String, dynamic>> predictImage(File file) async {
    return await PredictService(file).call();
  }
}
