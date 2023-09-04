import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrbeam/config/common.dart';
import 'package:qrbeam/config/strings.dart';
import 'package:qrbeam/view/create%20qr/all_details.dart';

class CreateQR extends StatelessWidget {
  const CreateQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
        centerTitle: true,
      ),
      drawer: Drawer(),
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
              Card(
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

              // 3
              Card(
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

              // 4
              Card(
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

              // 5
              Card(
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

              // 6
              Card(
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
                        'assets/images/qr-code.png',
                        height: 60,
                      ),
                      width(15),
                      Text(
                        "All Information QR",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
