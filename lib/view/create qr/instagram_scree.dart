import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrbeam/view/create%20qr/show_qr.dart';

import '../../config/common.dart';
import '../../controller/details_controller.dart';
import '../widgets/text_field.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Instagram QR"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: SingleChildScrollView(
          child: GetBuilder<DetailsController>(
            init: DetailsController(),
            initState: (_) {},
            builder: (controller) {
              return Column(
                children: [
                 
                  textField(
                      text: "Enter Instagram ID",
                      controller: controller.instagramController),
                 
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GetBuilder<DetailsController>(
              autoRemove: false,
          init: DetailsController(),
          initState: (_) {},
          builder: (controller) {
            return ElevatedButton(
              onPressed: () {
                Get.to(() => ShowQR(
                      
                  userDetails: {
                     if(controller.instagramController.text.isNotEmpty)
                      'Instagram ID': box!.get("instagram")??controller.instagramController.text,
                      
                  },
                     
                    ));
              },
              child: Text("Submit"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                foregroundColor: MaterialStatePropertyAll(white),
              ),
            );
          },
        ),
      ),
  
    );
 
  }
}