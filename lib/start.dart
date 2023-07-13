import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("Health Taylor"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
            child: Container(
              width: 393,
              height: 852,
              color: Colors.white,
              padding: const EdgeInsets.only(right: 13, bottom: 60, ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Transform.rotate(
                    angle: 1.57,
                    child: Container(
                      width: 76,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 21.33),
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
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.33),
                  Transform.rotate(
                    angle: 1.58,
                    child: Container(
                      width: 105,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 21.33),
                  Container(
                    width: 365.01,
                    height: 1,
                  ),
                  SizedBox(height: 21.33),
                  Container(
                    width: 346,
                    height: 282,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xffa3d8ab),
                    ),
                    padding: const EdgeInsets.only(left: 8, right: 9, top: 15, bottom: 17, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "유용근 님의 건강상태",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4000000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.86),
                        Container(
                          width: 324,
                          height: 1,
                        ),
                        SizedBox(height: 2.86),
                        Container(
                          width: 324,
                          height: 1,
                        ),
                        SizedBox(height: 2.86),
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "주의해야 할 성분",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4c20000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.86),
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "주의해야 할 성분",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4c20000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.86),
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "건강 유의 사항",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4c20000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.86),
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "2건",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4c20000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.86),
                        SizedBox(
                          width: 154,
                          height: 38,
                          child: Text(
                            "1건",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4c20000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.33),

                  SizedBox(height: 21.33),
                  SizedBox(
                    width: 64,
                    height: 14,
                    child: Text(
                      "자세히 >",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.33),
                  Transform.rotate(
                    angle: 1.57,
                    child: Container(
                      width: 118,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 21.33),
                  Container(
                    width: 346,
                    height: 173,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xffa6dbf8),
                    ),
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
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 42,
                          child: Container(
                            width: 324,
                            height: 1,
                          ),
                        ),
                        Positioned(
                          left: 268,
                          top: 62,
                          child: Container(
                            width: 46,
                            height: 49,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 46,
                                  height: 49,
                                  padding: const EdgeInsets.only(left: 2, right: 4, top: 5, bottom: 4, ),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.black, width: 1, ),
                                                color: Color(0x00d9d9d9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: FlutterLogo(size: 46),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
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
                                fontWeight: FontWeight.w600,
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
                                fontWeight: FontWeight.w600,
                              ),
                            ),
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
                            height: 14,
                            child: Text(
                              "자세히 >",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.33),
                  Container(
                    width: 346,
                    height: 173,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xffffa3a3),
                    ),
                    padding: const EdgeInsets.only(left: 11, right: 28, top: 9, bottom: 86, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(
                          width: 77,
                          height: 28,
                          child: Text(
                            "구매하기",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xf4000000),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 116,
                          height: 33,
                          child: Text(
                            "개별 상품\n구매하기",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 116,
                          height: 33,
                          child: Text(
                            "추천 포트폴리오\n바로 구매하기",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}