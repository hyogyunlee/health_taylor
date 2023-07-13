/*import 'package:flutter/material.dart';
import 'package:healthtaylor/first.dart';
import 'package:healthtaylor/second_goal.dart';
import 'package:healthtaylor/third.dart';

class Button {

  Widget button(BuildContext context, String label, int classIndex, Color color) {
    Widget classInstance;

    switch (classIndex) {
      case 0:
        classInstance = const First_loading();
        break;

      case 1:
        classInstance = const Second_goal();
        break;

      case 2:
        classInstance = const Third();
        break;

      default:
        classInstance = const First_loading();
        break;
    }
    return FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>classInstance),
          );
        },
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}*/