import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

Future shareCardImage(ScreenshotController screenshotController) async {
  // if (!await Permission.manageExternalStorage.isGranted) {
  //   await Permission.manageExternalStorage.request();
  await Permission.storage.request();
  await Permission.photos.request();
  // }
  Directory appDocDirectory = await getApplicationDocumentsDirectory();
  // Directory('${appDocDirectory.path}/dir')
  //     .create(recursive: true)
  //     .then((Directory directory) async {
  await screenshotController
      .captureAndSave(appDocDirectory.path)
      .then((image) async {
    log(image.toString());
    Share.shareXFiles([XFile(image!)], text: '');
  }).catchError((onError) {
    if (kDebugMode) {
      print(onError);
    }
  });
}
