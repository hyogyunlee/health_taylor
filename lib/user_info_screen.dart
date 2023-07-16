import 'package:flutter/material.dart';
import 'package:health_taylor/QR_create.dart';
import 'package:health_taylor/select.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;

class user_info_screen extends StatelessWidget {
  final kakao.User? user;
  final VoidCallback onLogout;

  user_info_screen({Key? key, this.user, required this.onLogout}) : super(key: key);

  void _onShowQRCode(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => select(),/*QR_create(
          data: user?.id.toString() ?? 'Unknown User',
        ),*/
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 여기서 바탕색을 하얀색으로 설정
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            user != null
                ? Image.network(user!.kakaoAccount?.profile?.profileImageUrl ?? '')
                : Container(),
            Text(
              '닉네임: ${user?.kakaoAccount?.profile?.nickname ?? ''}',
              style: TextStyle(fontSize: 20, color: Colors.black), // 여기서 텍스트 색상을 검정색으로 설정
            ),
            Text(
              '이메일: ${user?.kakaoAccount?.email ?? ''}',
              style: TextStyle(fontSize: 20, color: Colors.black), // 여기서 텍스트 색상을 검정색으로 설정
            ),
            Text(
              '성별: ${(user?.kakaoAccount?.gender ?? '').toString().split('.').last}',
              style: TextStyle(fontSize: 20, color: Colors.black), // 여기서 텍스트 색상을 검정색으로 설정
            ),
            Text(
              '연령대: ${user?.kakaoAccount?.ageRange ?? ''}',
              style: TextStyle(fontSize: 20, color: Colors.black), // 여기서 텍스트 색상을 검정색으로 설정
            ),
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
