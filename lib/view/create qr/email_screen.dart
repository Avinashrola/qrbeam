import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrbeam/view/create%20qr/show_qr.dart';

import '../../config/common.dart';
import '../../controller/details_controller.dart';
import '../widgets/text_field.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("E-mail Address QR"),
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
                      text: controller.emailController.text.isNotEmpty? "${controller.emailController.text}":"Enter E-mail Address",
                      controller: controller.emailController),
                 
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GetBuilder<DetailsController>(
          init: DetailsController(),
          initState: (_) {},
          builder: (controller) {
            return ElevatedButton(
              onPressed: () {
                // pending
                // Get.to(() => 
                // ShowQR(
                      
                //       email: controller.emailController.text.toString(),
                     
                //     ));
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