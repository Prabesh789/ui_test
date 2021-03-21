import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height / 2,
        width: size.width / 2,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("https://unsplash.com/photos/MXbM1NrRqtI")),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
