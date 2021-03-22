import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test/utils/app_colors.dart';
import 'package:ui_test/widgets/popular_stay_widget.dart';

class PopularStays extends StatefulWidget {
  @override
  _PopularStaysState createState() => _PopularStaysState();
}

class _PopularStaysState extends State<PopularStays> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.bookmark,
              color: AppColors.indigoAccentColor,
              size: 27,
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Sunshine Grand Villa\nResort & Spa",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.sunshineTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: AppColors.yellowColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4,9",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "120 reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.1,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 10,
                              spreadRadius: 10,
                              color: Colors.indigo[50].withOpacity(0.4),
                            ),
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1585549071939-000f26fa0594?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 10,
                              spreadRadius: 10,
                              color: Colors.indigo[50].withOpacity(0.4),
                            ),
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1585549071939-000f26fa0594?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      MdiIcons.mapMarker,
                      size: 25,
                      color: AppColors.yellowColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Kecamatan Kuta Utara, Bali, \nIndonesia",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.sunshineTextColor,
                      ),
                    ),
                    SizedBox(width: 100),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1577086664693-894d8405334a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1233&q=80"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Features",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      PopularStayWidget(
                        backgroundColor: AppColors.indigoAccentColor,
                        height: size.height / 21,
                        width: size.width / 3,
                        textColor: Colors.white,
                        title: "7 bedrooms",
                        icon: Icon(
                          MdiIcons.bedQueen,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      PopularStayWidget(
                        backgroundColor: AppColors.openPool,
                        height: size.height / 21,
                        width: size.width / 3,
                        textColor: Colors.white,
                        title: "Open pool",
                        icon: Icon(
                          MdiIcons.pool,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      PopularStayWidget(
                        backgroundColor: AppColors.bathtopColor,
                        height: size.height / 21,
                        width: size.width / 3,
                        textColor: Colors.white,
                        title: "3 bath",
                        icon: Icon(
                          MdiIcons.cart,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 10, bottom: 10),
                child: Text(
                  "About Villa",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Text(
                  "The best tourist destination for holy days. Book your flights",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 610,
              left: 14,
              right: 14,
            ),
            child: Align(
              child: SizedBox(
                width: size.width,
                height: size.height / 14,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: AppColors.yellowColor,
                  onPressed: () {},
                  child: Text(
                    "Book it for \$1400",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
