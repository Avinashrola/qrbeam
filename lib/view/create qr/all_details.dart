import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrbeam/config/common.dart';
import 'package:qrbeam/view/create%20qr/show_qr.dart';
import 'package:qrbeam/view/widgets/text_field.dart';

import '../../controller/details_controller.dart';

class AllDetails extends StatefulWidget {
  const AllDetails({super.key});

  @override
  State<AllDetails> createState() => _AllDetailsState();
}

class _AllDetailsState extends State<AllDetails> {


@override
  void initState() {
   box?.put('name', 'avinash');

var name = box?.get('name');

print('Name: $name');
    super.initState();
  }

  var detailsController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Details"),
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
                      text: "Enter First Name",
                      controller: controller.firstNameController),
                  height(10),
                  textField(
                      text: "Enter Last Name",
                      controller: controller.lastNameController),
                  height(10),
                  textField(
                      text: "Enter E-mail Address",
                      controller: controller.emailController),
                  height(10),
                  textField(
                      text: "Enter Phone Number",
                      controller: controller.mobileController),
                  height(10),
                  textField(
                      text: "Enter Instagram ID",
                      controller: controller.instagramController),
                  height(10),
                  textField(
                      text: "Enter Facebook ID",
                      controller: controller.facebookController),
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
                      if(controller.firstNameController.text.isNotEmpty)
                      'First Name': box!.get("firstName")??controller.firstNameController.text,
                       if(controller.lastNameController.text.isNotEmpty)
                      'Last Name': box!.get("lastName")??controller.lastNameController.text,
                       if(controller.mobileController.text.isNotEmpty)
                      'Phone Number': box!.get("mobile")??controller.mobileController.text,
                       if(controller.emailController.text.isNotEmpty)
                      'Email Address': box!.get("email")??controller.emailController.text,
                       if(controller.instagramController.text.isNotEmpty)
                      'Instagram ID': box!.get("instagram")??controller.instagramController.text,
                       if(controller.facebookController.text.isNotEmpty)
                      'Facebook ID': box!.get("facebook")??controller.facebookController.text,
                    },
                    ));
                    controller.storeData();
                    
                    
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
