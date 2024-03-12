import 'dart:io';

import 'package:image_processing/data/service/service_base.dart';

class PredictService extends ServiceBase<void> {
  final File? file;

  PredictService(this.file);

  @override
  Future<Map<String, dynamic>> call() async {
    return await postImage('api/image/predict', file: file);
  }
}
