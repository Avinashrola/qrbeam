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

class ShowEmailQR extends StatefulWidget {
    final email;
  const ShowEmailQR({super.key, this.email,});

  @override
  State<ShowEmailQR> createState() => _ShowEmailQRState();
}

class _ShowEmailQRState extends State<ShowEmailQR> {

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
                    "Email: ${widget.email}",
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


class ShowPhoneNumberQR extends StatefulWidget {
    final phoneNumber;
  const ShowPhoneNumberQR({super.key, this.phoneNumber,});

  @override
  State<ShowPhoneNumberQR> createState() => _ShowPhoneNumberQRState();
}

class _ShowPhoneNumberQRState extends State<ShowPhoneNumberQR> {

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
                    "Phone Number: ${widget.phoneNumber}",
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

// instagram

class ShowInstagramACQR extends StatefulWidget {
    final instagram;
  const ShowInstagramACQR({super.key, this.instagram,});

  @override
  State<ShowInstagramACQR> createState() => _ShowInstagramACQRState();
}

class _ShowInstagramACQRState extends State<ShowInstagramACQR> {

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
                    "Phone Number: ${widget.instagram}",
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


// facebook

class ShowFacebookACQR extends StatefulWidget {
    final facebook;
  const ShowFacebookACQR({super.key, this.facebook,});

  @override
  State<ShowFacebookACQR> createState() => _ShowFacebookACQRState();
}

class _ShowFacebookACQRState extends State<ShowFacebookACQR> {

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
                    "Phone Number: ${widget.facebook}",
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

  }}
  