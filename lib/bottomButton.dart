
import 'package:flutter/material.dart';
import 'constants.dart';

class ButtonBottom extends StatelessWidget {
  ButtonBottom({this.text,this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            )),
        width: double.infinity,
        height: bottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: bottomContainerColor,
        ),
      ),
    );
  }
}
