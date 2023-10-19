import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/common.dart';

class DetailsController extends GetxController{
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController facebookController = TextEditingController();




void storeData() {
 box!.put('firstName', firstNameController.value.text);
 box!.put('lastName', lastNameController.value.text);
 box!.put('email', emailController.value.text);
 box!.put('mobile', mobileController.value.text);
 box!.put('instagram', instagramController.value.text);
 box!.put('facebook', facebookController.value.text);
  update();
}

  
}