//import 'package:flutter/gestures.dart';
//import 'dart:math';

import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/Add_page.dart';
import 'package:money_management/More_Option_page.dart';
//import 'package:intl/intl.dart';

//import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _bottomNavIndex = 0;
  ThemeData lighttheam = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black54),
  );

  // ThemeData darktheam = ThemeData(
  //     brightness: Brightness.dark,
  //
  //     primaryColor: Colors.white,
  //     colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black54));


  //int _bottomNavIndex = 0;
  final bool _light = true;
  String? dropdownvalue;
  // late String _startDate, _endDate;
  // final DateRangePickerController _controller = DateRangePickerController();
  // @override
  // void initState() {
  //   final DateTime today = DateTime.now();
  //   _startDate = DateFormat('dd, MMMM yyyy').format(today).toString();
  //   _endDate = DateFormat('dd, MMMM yyyy')
  //       .format(today.add(Duration(days: 3)))
  //       .toString();
  //   _controller.selectedRange = PickerDateRange(today, today.add(Duration(days: 3)));
  //   super.initState();
  // }
  // Future<void> selectionChanged(DateRangePickerSelectionChangedArgs args) async {
  //   setState(() {
  //     _startDate =
  //         DateFormat('dd, MMMM yyyy').format(args.value.startDate).toString();
  //     _endDate =
  //         DateFormat('dd, MMMM yyyy').format(args.value.endDate ?? args.value.startDate).toString();
  //   });
  // }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(
          2023,
          05,
        ),
        lastDate: DateTime(2030, 05));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String? selecteditem;



  //Text("${selectedDate.toLocal()}".split(' ')[0])
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // theme: _light ? lighttheam : darktheam,
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 22, right: 10, left: 10),
                  width: Get.width * 0.6,
                  height: Get.height * 0.06,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(225, 95, 27, .3),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Colors.black87,
                                  size: 15,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 4, right: 4, left: 1),
                            child: RichText(
                                text: TextSpan(
                                    text: "${selectedDate.toLocal()}"
                                        .split(' ')[0],
                                    style:
                                        const TextStyle(color: Colors.black87),
                                    children: [
                                  const TextSpan(
                                      text: ",",
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text: "${selectedDate.toLocal()}"
                                          .split(' ')[0],
                                      style: const TextStyle(
                                          color: Colors.black87)),
                                ])),
                          ),
                          Flexible(
                            child: IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                icon: const Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.black87,
                                    size: 15,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  width: Get.width * 0.3,
                  height: Get.height * 0.06,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(225, 95, 27, .3),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        elevation: 2,

                        //isExpanded: true,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                        value: dropdownvalue,
                        style: const TextStyle(color: Colors.black),
                        items: <String>['weekly', 'monthly', 'daily', '2month']
                            .map<DropdownMenuItem<String>>((String value) {
                          // if (kDebugMode) {
                          //   print(value);
                          // }
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            log("======$dropdownvalue");
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        width: Get.width * 0.3,
                        height: Get.height * 0.06,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white),
                        child: MaterialButton(
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                "Income",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 13),
                        width: Get.width * 0.3,
                        height: Get.height * 0.06,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white),
                        child: MaterialButton(
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                "Expense",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add,
              color: Colors.orange,
            ),
            onPressed: () {
              Get.off(const AddPage());
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(
            bottom: 15,
          ),
          clipBehavior: Clip.hardEdge,
          //width: 100,
          //height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            //boxShadow: kElevationToShadow[3],
          ),
          child: AnimatedBottomNavigationBar(
            shadow: const Shadow(color: Colors.red),
            // backgroundGradient: Colors.brown,
            activeColor: Colors.white,
            height: Get.height * 0.08,
            //navigation bar
            icons: const [
              Icons.home,
              Icons.record_voice_over_rounded,
              Icons.notes,
              Icons.more,
            ],
            activeIndex: _bottomNavIndex,
            gapLocation: GapLocation.center,
            //  notchSmoothness: NotchSmoothness.softEdge,
            notchMargin: 1,
            leftCornerRadius: 15,
            //rightCornerRadius: 0,
            onTap: (index) => setState(() => _bottomNavIndex= index),
            backgroundColor: Colors.orange,
          ),
        ),
      );

    // ),

    //),

    // appBar: AppBar(
    //   title: Row(
    //     children: [
    //       RichText(
    //         text: TextSpan(
    //             text: "${selectedDate.toLocal()}".split(' ')[0],
    //             children: [
    //               TextSpan(text: "-"),
    //               TextSpan(text: "${selectedDate.toLocal()}".split(' ')[0])
    //             ]),
    //       ),
    //       // SizedBox(width: 1,),
    //       IconButton(
    //         onPressed: () {
    //           _selectDate(context);
    //         },
    //         icon: Icon(
    //           Icons.arrow_forward_ios_sharp,
    //           color: Colors.black87,
    //           size: 15,
    //         ),
    //       ),
    //     ],
    //   ),
    //   backgroundColor: Colors.orange,
    //   leading: IconButton(
    //       onPressed: () {
    //         _selectDate(context);
    //       },
    //       icon: Icon(
    //         Icons.arrow_back_ios_new_sharp,
    //         color: Colors.black87,
    //         size: 15,
    //       )),
    //   actions: [
    //     //SizedBox(width: 0.5,),
    //     Container(
    //       // padding: EdgeInsets.only(top: 10,bottom: 10),
    //       margin: EdgeInsets.only(bottom: 10, top: 10),
    //       width: 80,
    //       height: 20,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(
    //             Radius.circular(20),
    //           ),
    //           color: Colors.white),
    //       child: Center(
    //         child: DropdownButtonHideUnderline(
    //           child: DropdownButton<String>(
    //             elevation: 2,
    //
    //             //isExpanded: true,
    //             icon: Icon(
    //               Icons.keyboard_arrow_down_sharp,
    //               color: Colors.black,
    //               size: 15,
    //             ),
    //             value: dropdownvalue,
    //             style: TextStyle(color: Colors.black),
    //             items: <String>['weekly', 'monthly', 'daily', '2month']
    //                 .map<DropdownMenuItem<String>>((String value) {
    //               print(value);
    //               return DropdownMenuItem<String>(
    //                 value: value,
    //                 child: Text(
    //                   value,
    //                   style: TextStyle(fontSize: 15, color: Colors.black),
    //                 ),
    //               );
    //             }).toList(),
    //             onChanged: (String? newValue) {
    //               setState(() {
    //                 log("======${dropdownvalue}");
    //                 dropdownvalue = newValue!;
    //               });
    //             },
    //             // child:PopupMenuButton(
    //             //   elevation: 2,
    //             //   shape: Border.all(color: Colors.orange),
    //             //   child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black87,),
    //             //     onSelected: (value){
    //             //     setState(() {
    //             //
    //             //       selectedItem = value.toString();
    //             //       log("==========weekl${selectedItem}");
    //             //     });
    //             //     print(value);
    //             //     Navigator.pushNamed(context, value.toString());
    //             //       }, itemBuilder:  (BuildContext ab){
    //             //   return const [
    //             //   PopupMenuItem(child:Text("Daily",style: TextStyle(color: Colors.black87),),
    //             //   ),
    //             //     PopupMenuItem(child:Text("Monthley",style: TextStyle(color: Colors.black87),),
    //             //     ),
    //             //     PopupMenuItem(child:Text("1Month",style: TextStyle(color: Colors.black87),),
    //             //     ),
    //             //   ];
    //             //   })
    //           ),
    //         ),
    //       ),
    //     ),
    //     Switch(
    //         value: _light,
    //         onChanged: (state) {
    //           setState(() {
    //             _light = state;
    //           });
    //         }),
    //   ],
    // ),
    // body: Column(
    //   children: [
    //     Row(
    //       children: [
    //         Expanded(
    //           child: Container(
    //             margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
    //             width: Get.width * 0.1,
    //             height: Get.height * 0.07,
    //             decoration: BoxDecoration(
    //               boxShadow: kElevationToShadow[5],
    //               borderRadius: const BorderRadius.all(
    //                 Radius.circular(20),
    //               ),
    //               color: Colors.orange,
    //             ),
    //             child: MaterialButton(
    //                 onPressed: () {},
    //                 child: Center(
    //                   child: const Text(
    //                     "Income",
    //                     style: TextStyle(color: Colors.white, fontSize: 20),
    //                   ),
    //                 )),
    //           ),
    //         ),
    //         const SizedBox(width: 10),
    //         Expanded(
    //           child: Container(
    //             margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
    //             width: Get.width * 0.1,
    //             height: Get.height * 0.07,
    //             decoration: BoxDecoration(
    //               boxShadow: kElevationToShadow[5],
    //               borderRadius: const BorderRadius.all(
    //                 Radius.circular(20),
    //               ),
    //               color: Colors.orange,
    //             ),
    //             child: MaterialButton(
    //                 onPressed: () {},
    //                 child: Center(
    //                   child: Text(
    //                     "Expense",
    //                     style: TextStyle(color: Colors.white, fontSize: 20),
    //                   ),
    //                 )),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {},
    //   child: const Icon(
    //     Icons.add,
    //     color: Colors.orange,
    //   ),
    // ),
    // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // bottomNavigationBar: Container(
    //   margin: const EdgeInsets.only(
    //     bottom: 15,
    //   ),
    //   clipBehavior: Clip.hardEdge,
    //   //width: 100,
    //   //height: 60,
    //   decoration: const BoxDecoration(
    //     borderRadius: BorderRadius.only(
    //       bottomLeft: Radius.circular(24),
    //       bottomRight: Radius.circular(24),
    //       topRight: Radius.circular(24),
    //       topLeft: Radius.circular(24),
    //     ),
    //     //boxShadow: kElevationToShadow[3],
    //   ),
    //   child: AnimatedBottomNavigationBar(
    //     shadow: Shadow(color: Colors.red),
    //     // backgroundGradient: Colors.brown,
    //     activeColor: Colors.white,
    //     height: Get.height * 0.08,
    //     //navigation bar
    //     icons: const [
    //       Icons.home,
    //       Icons.record_voice_over_rounded,
    //       Icons.notes,
    //       Icons.more,
    //     ],
    //     activeIndex: _bottomNavIndex,
    //     gapLocation: GapLocation.center,
    //     //  notchSmoothness: NotchSmoothness.softEdge,
    //     notchMargin: 1,
    //     leftCornerRadius: 15,
    //     //rightCornerRadius: 0,
    //     onTap: (index) => setState(() => _bottomNavIndex = index),
    //     backgroundColor: Colors.orange,
    //   ),
    // ),
  }
}
