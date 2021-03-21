import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const MyWidget(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.title,
      @required this.backgroundColor,
      @required this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Text(
        "$title",
        style: TextStyle(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          bottomLeft: Radius.circular(60),
          topLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
    );
  }
}
