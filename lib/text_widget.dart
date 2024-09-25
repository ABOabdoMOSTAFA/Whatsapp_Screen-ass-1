import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String pathImage;
  String textTitle;
  TextDirection textDirection;

  TextWidget(
      {required this.pathImage,
      required this.textTitle,
      required this.textDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        textDirection: textDirection,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(pathImage),
            radius: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            width: 240,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white),
            ),
            child: Text(
              textTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}