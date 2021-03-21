import 'package:flutter/material.dart';

class PopularStayWidget extends StatefulWidget {
  final double height;
  final double width;
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Icon icon;

  const PopularStayWidget(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.title,
      @required this.backgroundColor,
      @required this.textColor,
      this.icon})
      : super(key: key);

  @override
  _PopularStayWidgetState createState() => _PopularStayWidgetState();
}

class _PopularStayWidgetState extends State<PopularStayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          bottomLeft: Radius.circular(60),
          topLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 8),
          widget.icon,
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              "${widget.title}",
              style: TextStyle(
                fontSize: 14,
                color: widget.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
