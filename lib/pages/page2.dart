import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Text(
              '???님의 추천 보충제 포트폴리오? 입니다',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 20),
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
                    child: Column(
                      children: [
                        Text('마이프로틴 아이솔레이트 초코'),
                        Divider(thickness: 2, color: Colors.grey[500]),
                        Text('성분? 추천이유? : ???님은 유당불내증이 있어서 블라블라'),
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
                        Text('싸이베이션 BCAA 레몬라임'),
                        Divider(thickness: 2, color: Colors.grey[500]),
                        Text('성분? 추천이유? : ???님은 상큼한맛을 좋아함 블라블라'),
                      ],
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