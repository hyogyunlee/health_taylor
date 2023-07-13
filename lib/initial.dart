/*import 'package:flutter/material.dart';
import 'package:healthtaylor/first.dart';
import 'package:healthtaylor/second_goal.dart';
import 'package:healthtaylor/third.dart';

class InitialActivity extends StatefulWidget {

  const InitialActivity({super.key, required this.title});

  final String title;

  @override
  State<InitialActivity> createState() => _InitialActivityState();
}

class _InitialActivityState extends State<InitialActivity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 59,
            ),
            SizedBox(
              width: 282,
              height: 35,
              child: Text(
                "헬스테일러",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 364,
              height: 0,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                width:346,
                height: 282,
                child: _firstButton(context,)
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                width:346,
                height:173,
                child: _secondButton(context,)
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                width:346,
                height:173,
                child: _thirdButton(context,)
            ),
          ],
        ),
      ),
    );
  }

  Widget _firstButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffa3d8ab),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.only(right: 1, bottom: 17,),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>First_loading()),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left:8,
            top:15,
            child: SizedBox(
              width: 154,
              height: 38,
              child: Text(
                "유용근 님의 건강상태",
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4000000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left:283,
            top:34,
            child: SizedBox(
              width: 64,
              height: 15,
              child: Text(
                "자세히 >",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 11,
              top: 53,
              child: SizedBox(
                width: 324,
                height: 0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              )
          ),
          Positioned(
              left: 11,
              top: 187,
              child: SizedBox(
                width: 324,
                height: 0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              )
          ),
          Positioned(
            left:8,
            top:189,
            child: SizedBox(
              width: 154,
              height: 38,
              child: Text(
                "주의해야 할 성분",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4c20000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            top:227,
            child: SizedBox(
              width: 154,
              height: 38,
              child: Text(
                "2건",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4c20000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 173,
              top: 196,
              child: SizedBox(
                width: 0,
                height: 76,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              )
          ),
          Positioned(
            left:183,
            top:189,
            child: SizedBox(
              width: 154,
              height: 38,
              child: Text(
                "건강 유의 사항",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4c20000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left:183,
            top:227,
            child: SizedBox(
              width: 154,
              height: 38,
              child: Text(
                "1건",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4c20000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondButton(BuildContext context,) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffa6dbf8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.only(right: 2, bottom: 16, ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>Second_goal()),
        );
      },
      child: Stack(
        children:[
          Positioned(
            left: 8,
            top: 10,
            child: SizedBox(
              width: 77,
              height: 28,
              child: Text(
                "섭취 이력",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4000000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 42,
            child: SizedBox(
                width: 324,
                height: 0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                )
            ),
          ),
          Positioned(
              left: 268,
              top: 62,
              child: SizedBox(
                width: 46,
                height: 49,
                child: Image.asset('images/check.png'),
              )
          ),
          Positioned(
            left: 252,
            top: 115,
            child: SizedBox(
              width: 82,
              height: 25,
              child: Text(
                "오늘 먹었어요!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 241,
              top: 56,
              child: SizedBox(
                width: 0,
                height: 105,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              )
          ),
          Positioned(
            left: 17,
            top: 46,
            child: SizedBox(
              width: 214,
              height: 34,
              child: Text(
                "지난 5일간 꾸준히 섭취하였습니다",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: 17,
            top: 123,
            child: SizedBox(
              width: 214,
              height: 34,
              child: Text(
                "11일치의 보조식품이 남았습니다",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 102,
            child: SizedBox(
                width: 233,
                height: 0,
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                )
            ),
          ),
          Positioned(
            left: 5,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 189,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 212,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 51,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 74,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 97,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffc45757),
              ),
            ),
          ),
          Positioned(
            left: 28,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffc45757),
              ),
            ),
          ),
          Positioned(
            left: 166,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 143,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 96,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff73c457),
              ),
            ),
          ),
          Positioned(
            left: 280,
            top: 24,
            child: SizedBox(
              width: 64,
              height: 15,
              child: Text(
                "자세히 >",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdButton(BuildContext context,) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffffa3a3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.only(right: 28, bottom: 86, ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>Third()),
        );
      },
      child: Stack(
        children:[
          Positioned(
            left: 11,
            top: 9,
            child: SizedBox(
              width: 77,
              height: 28,
              child: Text(
                "구매하기",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xf4000000),
                  fontSize: 15,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            left: 33,
            top: 54,
            child: SizedBox(
              width: 116,
              height: 40,
              child: Text(
                "개별 상품\n구매하기",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
              left: 173,
              top: 41,
              child: SizedBox(
                width: 0,
                height: 118,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              )
          ),
          Positioned(
            left:202,
            top: 54,
            child: SizedBox(
              width: 116,
              height: 40,
              child: Text(
                "추천 포트폴리오\n바로 구매하기",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/