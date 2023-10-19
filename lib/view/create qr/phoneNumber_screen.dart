import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:qrbeam/view/create%20qr/show_qr.dart';

import '../../config/common.dart';
import '../../controller/details_controller.dart';
import '../widgets/text_field.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Phone Number QR"),
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
                      text: "Enter Phone Number",
                      controller: controller.mobileController),
                 
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
                     if(controller.mobileController.text.isNotEmpty)
                    'Phone Number': box!.get("mobile")??controller.mobileController.text,
                      
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