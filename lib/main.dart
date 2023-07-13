import 'package:flutter/material.dart';
import 'package:health_taylor/kakao_login.dart';
import 'package:health_taylor/main_view_model.dart';
import 'package:health_taylor/user_info_screen.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  final viewModel = MainViewModel(KakaoLogin());

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
        'gender': (user.kakaoAccount?.gender ?? '').toString().split('.').last,
        'ageRange': ageRange == 'null' ? null : ageRange, // 이 부분을 수정합니다.
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
        child: ElevatedButton(
          onPressed: () async {
            await viewModel.login();
            if (viewModel.isLogined) {
              await uploadUserInfoToFirestore(viewModel.user); // 사용자 정보 업로드
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserInfoScreen(
                    user: viewModel.user,
                    onLogout: () async {
                      await viewModel.logout();
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            }
            setState(() {});
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}