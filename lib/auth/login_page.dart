import 'package:flutter/material.dart';
import 'package:health_taylor/components/google_button.dart';
import 'package:health_taylor/components/kakao_button.dart';
import 'package:health_taylor/pages/onboarding_page.dart';
import 'package:health_taylor/auth/google_login/google_login.dart';
import 'package:health_taylor/auth/google_login/google_main_view_model.dart';
import 'package:health_taylor/auth/kakao_login/kakao_login.dart';
import 'package:health_taylor/auth/kakao_login/kakao_main_view_model.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final kakaoviewModel = kakao_MainViewModel(KakaoLogin());
  final googleviewModel= google_MainViewModel(GoogleLogin());

  Future<void> uploadUserInfoToFirestore(kakao.User? user) async {
    if (user == null || user.kakaoAccount == null) return;

    // 사용자 정보를 Firestore의 'users' 컬렉션에 추가합니다.
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // AgeRange 값을 문자열로 변환하는 부분을 수정합니다.
      String ageRange = (user.kakaoAccount?.ageRange ?? '')
          .toString()
          .split('.')
          .last;

      await firestore.collection('users').doc(user.id.toString()).set({
        'nickname': user.kakaoAccount?.profile?.nickname,
        'email': user.kakaoAccount?.email ?? '',
        'gender': (user.kakaoAccount?.gender ?? '')
            .toString()
            .split('.')
            .last,
        'ageRange': ageRange == 'null' ? null : ageRange,
      });
    } catch (e) {
      print('Error adding user to Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/loginlogo.png',
                      scale: 1.8,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '개인맞춤형 운동보조식품 제공 솔루션',
                      style: TextStyle(fontSize: 10, color: Colors.grey[850]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90.0),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(bottom: 3),
                            isDense: true,
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: '아이디',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey[600])),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90.0),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(bottom: 3),
                            isDense: true,
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: '비밀번호',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey[600])),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnBoardingPage(),
                              ));
                        },
                        child: const Text('일단 로그인')),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      '이미 계정이 있으신가요',
                      style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 130.0),
                      child: Divider(
                        color: Colors.grey[500],
                        thickness: 2,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 10),
                        child: kakaoButton(ontap: () async {
                          await kakaoviewModel.login();
                          if (kakaoviewModel.isLogined) {
                            await uploadUserInfoToFirestore(kakaoviewModel.user); // 사용자 정보 업로드
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnBoardingPage(),
                              ),
                            );
                          }
                          setState(() {});
                        }, text: '카카오계정으로 로그인')),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 5),
                        child: googleButton(ontap: () async{
                          await googleviewModel.login();
                          if (googleviewModel.isLogined) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnBoardingPage(),
                              ),
                            );
                          }
                        }, text: '구글계정으로 로그인')),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '새로 시작하기',
                      style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 130.0),
                      child: Divider(
                        color: Colors.grey[500],
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: kakaoButton(ontap: () async {
                          await kakaoviewModel.login();
                          if (kakaoviewModel.isLogined) {
                            await uploadUserInfoToFirestore(kakaoviewModel.user); // 사용자 정보 업로드
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnBoardingPage(),
                              ),
                            );
                          }
                          setState(() {});
                        }, text: '카카오계정으로 로그인')),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: googleButton(ontap: () async{
                          await googleviewModel.login();
                          if (googleviewModel.isLogined) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnBoardingPage(),
                              ),
                            );
                          }
                        }, text: '구글계정으로 로그인')),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      '아이디 혹은 비밀번호를 잊었습니다.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}