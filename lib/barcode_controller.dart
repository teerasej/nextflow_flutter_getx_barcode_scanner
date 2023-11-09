import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeController extends GetxController {
  var barcodeValue = "".obs;

  startScan() async {
    // เรียกใช้ตัวแสกน
    String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
      // กำหนดสีเส้นแสกน
      '#FF0000',

      // ข้อความบนปุ่มยกเลิก
      'Cancel',

      // เปิด/ปิดใช้งานปุ่มไฟฉาย
      false,
      ScanMode.DEFAULT,
    );

    barcodeValue.value = barcodeScanResult;
  }
}
