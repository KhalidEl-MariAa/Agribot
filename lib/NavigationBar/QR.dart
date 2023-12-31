import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Qr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[400],
        title: Text(
          'GPS QR Code',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String result = await scanQRCode();
            if (result.isNotEmpty) {
              print('تم قراءة الرمز: $result');
            } else {
              print('لم يتم قراءة أي رمز.');
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[500],
          ),
          child: Text(
            'Scan QR',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Future<String> scanQRCode() async {
    try {
      String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      return barcodeScanResult;
    } catch (e) {
      return '';
    }
  }
}
