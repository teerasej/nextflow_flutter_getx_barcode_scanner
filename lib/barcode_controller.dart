import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get_storage/get_storage.dart';

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

  saveBarcode() {
    var storage = GetStorage();
    storage.write('barcode', barcodeValue.value);

    // snack bar show text
    Get.snackbar(
      'Save Barcode',
      'Save Barcode value to storage',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  loadBarcode() {
    var storage = GetStorage();
    barcodeValue.value = storage.read('barcode');

    // snack bar show text
    Get.snackbar(
      'Load Barcode',
      'Load Barcode value from storage',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
