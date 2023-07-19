import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_taylor/pages/select.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;

class kakao_user_info_screen extends StatelessWidget {
  final kakao.User? user;
  final VoidCallback onLogout;
  kakao_user_info_screen({Key? key, this.user, required this.onLogout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (ModalRoute.of(context)?.canPop ?? false) {
          Navigator.of(context).pop();
        } else {
          SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
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
                onPressed: () => select(),
                child: const Text('맛선택'),
              ),
              ElevatedButton(
                onPressed: onLogout,
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}