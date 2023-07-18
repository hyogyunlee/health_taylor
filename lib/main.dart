import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_taylor/google_login.dart';
import 'package:health_taylor/google_main_view_model.dart';
import 'package:health_taylor/kakao_login.dart';
import 'package:health_taylor/kakao_main_view_model.dart';
import 'package:health_taylor/select.dart';
import 'package:health_taylor/user_info_screen.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() async {
  kakao.KakaoSdk.init(nativeAppKey: 'a142c3efae28bc1a3df7e1b83e833b3f');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final kakaoviewModel = kakao_MainViewModel(KakaoLogin());
  final googleviewModel= google_MainViewModel(GoogleLogin());


  Future<void> uploadUserInfoToFirestore(kakao.User? user) async {
    if (user == null) return;

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await kakaoviewModel.login();
                if (kakaoviewModel.isLogined) {
                  await uploadUserInfoToFirestore(kakaoviewModel.user); // 사용자 정보 업로드
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          user_info_screen(
                            user: kakaoviewModel.user,
                            onLogout: () async {
                              await kakaoviewModel.logout();
                              Navigator.pop(context);
                            },
                          ),
                    ),
                  );
                }
                setState(() {});
              },
              child: const Text('Kakao Login'),
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () async{
                await googleviewModel.login();
                if (googleviewModel.isLogined) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(user: googleviewModel.user,
                            onLogout: () async {
                              await googleviewModel.logout();
                              Navigator.pop(context);
                            },
                          ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
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