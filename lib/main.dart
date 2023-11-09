import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nextflow_flutter_getx_barcode_scanner/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nextflow Barcode Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
      ],
    );
  }
}
