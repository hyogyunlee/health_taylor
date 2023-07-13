/*import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QR_create extends StatelessWidget {
  final String kakaoUid;

  QR_create({required this.kakaoUid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR 코드 생성기'),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: QrPainter(
            data: kakaoUid,
            version: QrVersions.auto,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: Colors.black,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.square,
              color: Colors.black,
            ),
            size: 200.0,
          ).toImage(200),
        ),
      ),
    );
  }
}*/