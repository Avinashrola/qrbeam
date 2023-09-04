import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrbeam/config/strings.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../config/common.dart';

class ShowQR extends StatefulWidget {
  final firstName;
  final lastName;
  final email;
  final phoneNumber;
  final instagram;
  final facebook;

  const ShowQR(
      {super.key,
      this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.instagram,
      this.facebook});

  @override
  State<ShowQR> createState() => _ShowQRState();
}

class _ShowQRState extends State<ShowQR> {

  ScreenshotController screenshotController = ScreenshotController();
   RxBool showShare = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR"),
      ),
      body: Screenshot(
        controller: screenshotController,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImageView(
                data:
                    "First Name: ${widget.firstName}\nLast Name: ${widget.lastName}\nemail: ${widget.email}\nPhone Number: ${widget.phoneNumber}\nInstagram ID: ${widget.instagram}\nFacebook ID: ${widget.facebook}",
                size: 250,
                gapless: false,
                errorStateBuilder: (cxt, err) {
                  return Container(
                    child: Center(
                      child: Text(
                        'Uh oh! Something went wrong...',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
              height(20),
              Obx(
                () => showShare.value
                    ? IconButton(
                        onPressed: () async {
                          showShare.value = false;
                          await shareCardImage(screenshotController)
                              .whenComplete(() {
                            showShare.value = true;
                          });
                        },
                        icon: const Icon(Icons.share))
                    : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
      "assets/images/qr-code.png",
      width: 40,
    ),
    width(12),
    Text(appName),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


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
