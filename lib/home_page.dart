import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_barcode_scanner/barcode_controller.dart';

class HomePage extends StatelessWidget {
  var controller = Get.put(BarcodeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Barcode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.startScan();
              },
              child: Text('Scan Barcode'),
            ),
            SizedBox(height: 16),
            Obx(() {
              return Text(
                "${controller.barcodeValue.value}",
                style: TextStyle(fontSize: 18),
              );
            }),
          ],
        ),
      ),
    );
  }
}
