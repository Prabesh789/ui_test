import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test/screens/new_application/new_application.dart';
import 'package:ui_test/utils/app_colors.dart';
import 'package:ui_test/widgets/my_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> images = [
    "https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1613429561582-2b20fc0028dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1565848725126-1592ea54de4b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80",
    "https://images.unsplash.com/photo-1587726419503-e4ca65918c10?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Applications",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                    SizedBox(width: 110),
                    FloatingActionButton(
                      backgroundColor: AppColors.yellowColor,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        NewApplication.showSheetButton(context);
                      },
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 0,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Current",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Executed",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.height / 2 - 195,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: size.height / 2 - 195,
                        width: size.width - 40,
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
                              color: Colors.indigo[50].withOpacity(0.9),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, top: 20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Villa for 16 guests in Ubud",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          MdiIcons.fire,
                                          size: 28,
                                          color: AppColors.yellowColor,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          '3 offers',
                                          style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                              color: Colors.brown,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Nov 20, 2020 - Dec 4, 2020",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 20, top: 10),
                              child: Wrap(
                                spacing: 10,
                                direction: Axis.horizontal,
                                runSpacing: 10,
                                children: <Widget>[
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 4 - 10,
                                    title: "16 guests",
                                    backgroundColor: AppColors.tealAccentColor,
                                  ),
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 4,
                                    title: "5 bedrooms",
                                    backgroundColor: AppColors.deepPurple,
                                  ),
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 3 - 20,
                                    title: "\$1400 -\$1800",
                                    backgroundColor: AppColors.greenAccentColor,
                                  ),
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 3 - 35,
                                    title: "Open pool",
                                    backgroundColor: AppColors.blueColor,
                                  ),
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 5,
                                    title: "Kitchen",
                                    backgroundColor: AppColors.orangeColor,
                                  ),
                                  MyWidget(
                                    height: size.height / 21,
                                    width: size.width / 5 - 20,
                                    title: "Wi-Fi",
                                    backgroundColor: AppColors.bringleColor,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: size.height / 2 - 200,
                        width: size.width - 40,
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
                              color: Colors.indigo[50].withOpacity(0.9),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Popular stays",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 165),
                      Container(
                        height: size.height / 20,
                        width: size.width / 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          MdiIcons.tuneVariant,
                          size: 24,
                          color: AppColors.menuColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: new StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(9),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) =>
                        new Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              images[index],
                            ),
                          ],
                        ),
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.fit(2),
                    mainAxisSpacing: 12.0,
                    crossAxisSpacing: 12.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
