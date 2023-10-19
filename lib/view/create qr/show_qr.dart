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
import '../widgets/share_qr.dart';

class ShowQR extends StatelessWidget {
  
  final Map<String, String> userDetails;

   ShowQR(
      {super.key,
      required this.userDetails
      });

  ScreenshotController screenshotController = ScreenshotController();

   RxBool showShare = true.obs;

 

  @override
  Widget build(BuildContext context) {
    final String userDetailText = userDetails.entries
        .map((entry) => '${entry.key}: ${entry.value}')
        .join('\n');
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
              Text("data"),
              Text(userDetailText),
              QrImageView(
                data: userDetailText,
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
