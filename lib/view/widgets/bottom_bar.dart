import 'package:flutter/material.dart';

import '../create qr/create_qr.dart';
import '../scan_qr.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


int selected = 0;

final List<Widget> _pages = <Widget>[
    const CreateQR(),
    const ScanQR(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selected,
        children: 
          _pages
        ,
      ),
      bottomNavigationBar: 
      NavigationBar(
        onDestinationSelected: (int index) {
                  setState(() {
                    selected = index;
                 
                  });
                },
                selectedIndex: selected,
                destinations: const [
 NavigationDestination(
                    icon: Icon(Icons.qr_code),
                    label: "Create QR",
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.qr_code_scanner),
                    label: "Scan QR",
                  ),
                ],
      ),
       );
    
  }
}
