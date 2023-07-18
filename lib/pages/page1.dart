import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final textEditingController = TextEditingController();

  Future create() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext ctx) {
        return Padding(
          padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: MediaQuery.of(ctx).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: '키'),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: '몸무게'),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: '주소'),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: '몸무게'),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: '몸무게'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('생성'))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 44, 91, 1),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                'assets/ht.png',
                scale: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('앞에서 입력한 개인정보들'),
                      GestureDetector(
                        onTap: create,
                        child: Icon(
                          Icons.add_box_rounded,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: '                                   운동보조식품 검색하기',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    suffixIconColor: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}