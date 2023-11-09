import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                // TODO: Implement barcode scanning logic
              },
              child: Text('Scan Barcode'),
            ),
            SizedBox(height: 16),
            Text(
              'Scan result will appear here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
