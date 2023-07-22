import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:health_taylor/QR_create.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart' as kakao;

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile']);

Future<String?> getNickname() async {
  String? nickname;
  try {
    _googleSignIn.disconnect(); // User information disconnect
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      nickname = googleUser.displayName;
      return nickname;
    } else {
      nickname=(await kakao.UserApi.instance.me()) as String?;
    }
  } catch (error) {
    print("Login error: $error");
  }
  return '';
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  String nickname = '???';

  @override
  void initState() {
    super.initState();
    getNickname().then((value) {
      setState(() {
        nickname = value!;
      });
    });
  }

  // Sign out function
  Future<void> _signOut() async {
    try {
      await _googleSignIn.signOut();
      await kakao.UserApi.instance.logout();
      print("User successfully signed out.");
    } catch (error) {
      print("Sign out error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Text(
              '$nickname님의 추천 보충제 포트폴리오? 입니다',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: _signOut,
              child: Text(
                "로그아웃",
                style: TextStyle(fontSize: 16),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]),
                    child: ElevatedButton(
                      onPressed: () {
                        final qrData =
                            '단백질: 28,'
                            '아르기닌: 13,'
                            'BCAA: 9';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QR_create(data: qrData),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Text('마이프로틴 아이솔레이트 초코'),
                          Divider(thickness: 2, color: Colors.grey[500]),
                          Text('성분? 추천이유? : $nickname님은 유당불내증이 있어서 블라블라'),
                          Text('단백질 28g 아르기닌 13g BCAA 9g',textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]),
                    child: ElevatedButton(
                      onPressed: () {
                        final qrData =
                            '단백질: 23,'
                            '아르기닌: 15,'
                            'BCAA: 7';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QR_create(data: qrData),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('싸이베이션 BCAA 레몬라임'),
                          Divider(thickness: 2, color: Colors.grey[500]),
                          Text('성분? 추천이유? : $nickname님은 상큼한맛을 좋아함 블라블라'),
                          Text('단백질 23g 아르기닌 5g BCAA7g',textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}