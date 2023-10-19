import 'package:flutter/material.dart';
import 'package:qrbeam/config/common.dart';

class DetailsScreen extends StatefulWidget {
  dynamic barcodeType;
  dynamic data;
   DetailsScreen({super.key,required this.barcodeType,required this.data});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.barcodeType} Result"),
      ),
      body: Center(
        child: Column(
          children: [
            // Text(widget.barcodeType),
            // height(10),
            Divider(),
             height(10),
              Text(widget.data,style: TextStyle(
                fontSize: 17,
              ),),
          ],
        ),
      ),
    );
  }
}