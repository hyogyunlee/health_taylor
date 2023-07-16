import 'package:flutter/material.dart';

class select extends StatefulWidget {
  const select({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<select> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('선호도 선택'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("맛",
                  style: TextStyle(fontSize: 15, color: Color(0xffcfcfcf))),
              DropdownButton<String?>(
                value: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value;
                    print(_selectedValue);
                  });
                },
                isDense: true,
                items: ['초코', '딸기', '바닐라']
                    .map<DropdownMenuItem<String?>>((String? i) {
                  return DropdownMenuItem<String?>(
                    value: i,
                    child: Text(
                        {'초코': '초코', '딸기': '딸기', '바닐라': '바닐라'}[i] ?? '비공개'),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
