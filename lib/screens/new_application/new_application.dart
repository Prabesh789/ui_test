import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:ui_test/utils/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:ui_test/widgets/my_widget.dart';

class NewApplication {
  static void showSheetButton(BuildContext context) {
    double _lowerValue = 20.0;
    double _upperValue = 80.0;
    Size size = MediaQuery.of(context).size;
    final TextEditingController dateController = TextEditingController();
    var selectedType;
    List<String> _type = <String>[
      'One',
      'Two',
      'Three',
    ];
    int pickedDate;

    Future<Null> _selectDate(BuildContext context, setState) async {
      DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030),
        //
      );

      if (_datePicker != null) {
        setState(() {
          pickedDate = _datePicker.microsecondsSinceEpoch;

          dateController.text = DateFormat('MMM dd,yyyy').format(_datePicker);
        });
      }
    }

    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.89,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Text(
                            "New application",
                            style: TextStyle(
                              fontSize: 25,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                              "Create an application for the hosts indicating all \n the necessary living conditions"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, top: 10, right: 14, bottom: 10),
                          child: Text(
                            "Destination",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.teal,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.indigoAccent,
                                  ),
                                ),
                                hintText: 'Ubud'),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, top: 10, bottom: 10),
                                      child: Text(
                                        "Date",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      child: TextFormField(
                                        controller: dateController,
                                        readOnly: true,
                                        onTap: () {
                                          _selectDate(context, setState);
                                        },
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: "Sep, 24, 2020",
                                          suffixIcon: Icon(Icons.date_range),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, top: 10, bottom: 10),
                                      child: Text(
                                        "Nights",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16, left: 13),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Colors.teal,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.indigoAccent,
                                            ),
                                          ),
                                          hintText: '10',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14, top: 10, bottom: 10),
                                    child: Text(
                                      "Guests",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 16),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.indigoAccent,
                                          ),
                                        ),
                                        hintText: '2',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14, top: 10, bottom: 10),
                                    child: Text(
                                      "Bedrooms",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 16),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.indigoAccent,
                                          ),
                                        ),
                                        hintText: '1',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, top: 10, bottom: 10),
                          child: Text(
                            "Type",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: DropdownButtonFormField(
                            items: _type
                                .map((value) => DropdownMenuItem(
                                      child: Text(value),
                                      value: value,
                                    ))
                                .toList(),
                            onChanged: (selectedBookType) {
                              setState(() {
                                selectedType = selectedBookType;
                              });
                            },
                            value: selectedType,
                            isExpanded: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black,
                              )),
                              hintText: "Any type",
                              labelStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 14, top: 10, bottom: 10),
                              child: Text(
                                "Price per night",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 195),
                            Text(
                              "\$20-\$6500",
                              style: TextStyle(
                                color: AppColors.tabbarIconColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, top: 10, bottom: 10),
                          child: Text(
                            "Graph",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            overlayColor: Colors.white,
                            activeTickMarkColor: Colors.white,
                            activeTrackColor: Colors.green,
                            inactiveTrackColor:
                                Color.fromARGB(0xff, 239, 239, 244),
                            thumbColor: Colors.green,
                            valueIndicatorColor: Colors.green,
                          ),
                          child: frs.RangeSlider(
                            min: 0.0,
                            max: 150.0,
                            lowerValue: _lowerValue,
                            upperValue: _upperValue,
                            divisions: 10,
                            showValueIndicator: true,
                            valueIndicatorMaxDecimals: 1,
                            onChanged:
                                (double newLowerValue, double newUpperValue) {
                              setState(() {
                                _lowerValue = newLowerValue;
                                _upperValue = newUpperValue;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, top: 10, bottom: 10),
                          child: Text(
                            "Features",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Wrap(
                            spacing: 10,
                            direction: Axis.horizontal,
                            runSpacing: 10,
                            children: <Widget>[
                              MyWidget(
                                textColor: Colors.black,
                                height: size.height / 21,
                                width: size.width / 4 - 10,
                                title: "Open pool",
                                backgroundColor: AppColors.newAppWrapWidget,
                              ),
                              MyWidget(
                                textColor: Colors.black,
                                height: size.height / 21,
                                width: size.width / 6,
                                title: "Wi-Fi",
                                backgroundColor: AppColors.newAppWrapWidget,
                              ),
                              MyWidget(
                                textColor: Colors.black,
                                height: size.height / 21,
                                width: size.width / 4 - 25,
                                title: "Number",
                                backgroundColor: AppColors.newAppWrapWidget,
                              ),
                              MyWidget(
                                textColor: Colors.black,
                                height: size.height / 21,
                                width: size.width / 5,
                                title: "Parking",
                                backgroundColor: AppColors.newAppWrapWidget,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: size.width,
                          height: size.height / 14,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: AppColors.yellowColor,
                            onPressed: () {},
                            child: Text(
                              "Create application",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Data {
  /// Initialize the instance of the [Data] class.
  Data({this.x, this.y});

  /// Spline series x points.
  final DateTime x;

  /// Spline series y points.
  final double y;
}
