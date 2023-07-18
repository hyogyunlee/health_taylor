import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_taylor/pages/select.dart';

class HomePage extends StatelessWidget {
  final User? user;
  final VoidCallback onLogout;

  HomePage({required this.user, required this.onLogout});

  void _onShowQRCode(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => select(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user?.photoURL != null)
              Image.network(user!.photoURL!),
            Text("환영합니다, ${user?.displayName}!"),
            SizedBox(height: 30),
            Text("이메일: ${user?.email}"),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _onShowQRCode(context),
              child: const Text('맛선택'),
            ),
            ElevatedButton(
              onPressed: onLogout,
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}