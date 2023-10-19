import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:qrbeam/config/common.dart';
import 'package:qrbeam/config/strings.dart';
import 'package:qrbeam/view/create%20qr/all_details.dart';
import 'package:qrbeam/view/create%20qr/email_screen.dart';
import 'package:qrbeam/view/create%20qr/facebook_screen.dart';
import 'package:qrbeam/view/create%20qr/instagram_scree.dart';
import 'package:qrbeam/view/create%20qr/phoneNumber_screen.dart';
import 'package:qrbeam/view/create%20qr/show_qr.dart';

class CreateQR extends StatelessWidget {
  const CreateQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
        centerTitle: true,
      ),
      // drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 1
              GestureDetector(
                onTap: () {
                  Get.to(()=>AllDetails());
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor:
                      Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/info.png',
                          height: 70,
                        ),
                        width(5),
                        Text(
                          "All Details",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // 2
              GestureDetector(
                onTap: () {
                  Get.to(()=>EmailScreen());
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor:
                      Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/email.png',
                          height: 60,
                        ),
                        width(15),
                        Text(
                          "E-mail Address QR",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // 3
              GestureDetector(
                onTap: () {
                   Get.to(()=>PhoneNumberScreen());
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor:
                      Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/chat.png',
                          height: 60,
                        ),
                        width(15),
                        Text(
                          "Mobile Number QR",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // 4
              GestureDetector(
                 onTap: () {
                   Get.to(()=>InstagramScreen());
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor:
                      Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/instagram.png',
                          height: 60,
                        ),
                        width(15),
                        Text(
                          "Instagram A/C QR",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // 5
              GestureDetector(
                 onTap: () {
                   Get.to(()=>FacebookScreen());
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor:
                      Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 60,
                        ),
                        width(15),
                        Text(
                          "Facebook A/C QR",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // 6  pending
//               GestureDetector(
//                 onTap: () {

//                   if(box!.get("firstName") != null || box!.get("lastName") != null || box!.get("mobile") != null || box!.get("email") != null || box!.get("facebook") != null || box!.get("instagram") != null)
// {
//   Fluttertoast.showToast(
//         msg: "Details Empty",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
// }else
//                  { 
//                   var name = box?.get('firstName');

// print('Name: $name');
//                   Get.to(()=>ShowQR(userDetails: {
                    
                    
//                       'First Name': box!.get("firstName"),
                     
//                       'Last Name': box!.get("lastName"),
                  
//                       'Phone Number': box!.get("mobile"),
                   
//                       'Email Address': box!.get("email"),
                       
//                       'Instagram ID': box!.get("instagram"),
                      
//                       'Facebook ID': box!.get("facebook"),
//                     },));}
//                 },
//                 child: Card(
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   surfaceTintColor:
//                       Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
//                   color: Color.fromARGB(255, 186, 151, 246).withOpacity(0.1),
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/qr-code.png',
//                           height: 60,
//                         ),
//                         width(15),
//                         Text(
//                           "All Information QR",
//                           style: TextStyle(
//                             fontSize: 20,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
            ],
          ),
        ),
      ),
    );
  }
}
