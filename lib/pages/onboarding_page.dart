import 'package:flutter/material.dart';
import 'package:health_taylor/components/segment_button.dart';
import 'package:health_taylor/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  String nickname = '???';
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  bool allCheck = false;
  bool Check1 = false;
  bool Check2 = false;
  bool Check3 = false;
  bool Check4 = false;

  void nextPage() {
    if (_currentPageIndex < 9) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceInOut,
      );
      setState(() {
        _currentPageIndex++;
      });
    }
  }

  void previousPage() {
    if (_currentPageIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceInOut,
      );
      setState(() {
        _currentPageIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            children: [
              //가입 동의
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackButton(
                          style: ButtonStyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 20, 25, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                '이용약관 동의',
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      value: allCheck,
                                      onChanged: (value) {
                                        setState(() {
                                          allCheck = value!;
                                          Check1 = value!;
                                          Check2 = value!;
                                          Check3 = value!;
                                          Check4 = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      '모두 동의',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      value: Check1,
                                      onChanged: (value) {
                                        setState(() {
                                          Check1 = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      '(필수) 개인정보보호방침 동의',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      value: Check2,
                                      onChanged: (value) {
                                        setState(() {
                                          Check2 = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      '(필수) 서비스 이용약관 동의',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      value: Check3,
                                      onChanged: (value) {
                                        setState(() {
                                          Check3 = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      '(필수) 민감정보수집 및 이용동의',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      checkColor: Colors.white,
                                      shape: CircleBorder(),
                                      value: Check4,
                                      onChanged: (value) {
                                        setState(() {
                                          Check4 = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      '(선택) 민감정보수집 및 이용동의',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Check1 && Check2 && Check3 == true
                                ? ElevatedButton(
                                onPressed: () {
                                  nextPage();
                                },
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '동의합니다',
                                  style: TextStyle(fontSize: 18),
                                ))
                                : Container(
                              width: width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  '동의합니다',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[200]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //온보딩1
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          style: ButtonStyle(),
                          onPressed: previousPage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 15, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                '가입을 축하드립니다! \n활용될 정보들을 입력해주세요',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 110.0),
                              child: Column(
                                children: [
                                  SingleChoice(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '나이 ex) 1900/01/01',
                                        hintStyle:
                                        TextStyle(color: Colors.grey)),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '이름',
                                        hintStyle:
                                        TextStyle(color: Colors.black)),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '키',
                                        hintStyle:
                                        TextStyle(color: Colors.black)),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '몸무게',
                                        hintStyle:
                                        TextStyle(color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  nextPage();
                                },
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '다음',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //온보딩2
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          style: ButtonStyle(),
                          onPressed: previousPage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '선호하는 보충제 회사가 있으신가요?',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '있으시다면 선호하는 맛도 적어주세요',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '회사 이름',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '보충제 맛',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: nextPage,
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '다음',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //온보딩3
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          style: ButtonStyle(),
                          onPressed: previousPage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '운동 목표를 적어주세요',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '운동목표',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '인바디 수치? 같은거',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: nextPage,
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '다음',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //온보딩4
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          style: ButtonStyle(),
                          onPressed: previousPage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                '갖고있는 질병이나 가족력이 \n있으시다면 적어주세요',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '질병',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      hintText: '가족력',
                                      hintStyle:
                                      TextStyle(color: Colors.black)),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: nextPage,
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '다음',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //온보딩5
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          style: ButtonStyle(),
                          onPressed: previousPage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            _currentPageIndex.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                '추가 뭐할까요',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.black)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.black)),
                                  hintText: '?~?',
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                            ElevatedButton(
                                onPressed: nextPage,
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, 50),
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  '다음',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //온보딩6
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Text(
                        '$nickname님이 입력하신 정보를 분석해 \n 보충제 포트폴리오를 추천해드리겠습니다',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: LottieBuilder.asset('assets/loading.json'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                          onPressed: nextPage,
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(width, 50),
                              backgroundColor: Colors.black),
                          child: const Text(
                            '일단 넘어가기',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
              //온보딩7
              Center(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('마이프로틴 아이솔레이트 초코'),
                                Divider(thickness: 2, color: Colors.grey[500]),
                                Text('성분? 추천이유? : $nickname님은 유당불내증이 있어서 블라블라'),
                              ],
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('싸이베이션 BCAA 레몬라임'),
                                Divider(thickness: 2, color: Colors.grey[500]),
                                Text('성분? 추천이유? : $nickname님은 상큼한맛을 좋아함 블라블라'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(width, 50),
                              backgroundColor: Colors.black),
                          child: const Text(
                            '완료 or 헬스테일러 함께하기',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}