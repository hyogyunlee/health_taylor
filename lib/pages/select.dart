import 'package:flutter/material.dart';
import '../qr_create.dart';

class select extends StatefulWidget {
  const select({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<select> {
  String? _selectedValue;
  final proteinController = TextEditingController();
  final arginineController = TextEditingController();
  final bcaaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('선호도 선택'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField<String?>(
                decoration: InputDecoration(
                  labelText: '맛',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(fontSize: 15, color: Color(0xffcfcfcf)),
                ),
                value: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value;
                    print(_selectedValue);
                  });
                },
                items: ['초코', '딸기', '바닐라']
                    .map<DropdownMenuItem<String?>>((String? i) {
                  return DropdownMenuItem<String?>(
                    value: i,
                    child: Text(
                        {'초코': '초코', '딸기': '딸기', '바닐라': '바닐라'}[i] ?? '비공개'),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: proteinController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: '단백질',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: arginineController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: '아르기닌',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: bcaaController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'BCAA',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('QR 생성하기'),
                onPressed: () {
                  final qrData = '맛: ${_selectedValue ?? 'Unselected'}, '
                      '단백질: ${proteinController.text}, '
                      '아르기닌: ${arginineController.text}, '
                      'BCAA: ${bcaaController.text}';
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QR_create(data: qrData),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}