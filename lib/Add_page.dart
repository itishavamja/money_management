import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:money_management/ABC.dart';
import 'package:money_management/DEF.dart';
import 'package:money_management/Home_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController dateinput = TextEditingController();
  final TextEditingController _account = TextEditingController();
  final TextEditingController _category = TextEditingController();
  final TextEditingController _ammount = TextEditingController();
  final TextEditingController _note = TextEditingController();
  //text editing controller for text field
  Controller controller = Controller();
  Controller2 controller2 = Controller2();
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  var items = ['ghhg', 'hhjjh', 'vbh'];
  String? selected;
  // bool isshow = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "add",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: const Color.fromRGBO(225, 99, 28, .6),
        leading: IconButton(
          onPressed: () {
            Get.off(const HomePage());
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        right: 10,
                        left: 10,
                      ),
                      width: Get.width * 1,
                      height: 400,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Expanded(
                                child: Center(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    controller: dateinput,
                                    decoration: const InputDecoration(
                                      hintText: "Enter the date",

                                      prefixIcon: Icon(
                                        Icons.date_range,
                                        color: Colors.black87,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.orangeAccent),
                                      ),
                                      focusColor: Colors.black87,
                                      // border: InputBorder.none
                                    ),
                                    readOnly: true, //
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(
                                                  2000), //DateTime.now() - not to allow to choose before today.
                                              lastDate: DateTime(2101));

                                      if (pickedDate != null) {
                                        // print(
                                        // pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        // print(
                                        //   formattedDate); //formatted date output using intl package =>  2021-03-16
                                        //you can implement different kind of Date Format here according to your requirement

                                        setState(() {
                                          dateinput.text =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {
                                        //print("Date is not selected");
                                      }
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Account",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 35,
                              ),
                              Expanded(
                                child: Center(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    controller: _account,
                                    decoration: const InputDecoration(
                                      // icon: Icon(Icons.account_balance),
                                      hintText: "Account",
                                      prefixIcon: Icon(
                                        Icons.account_balance,
                                        color: Colors.black87,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.orangeAccent),
                                      ),
                                      focusColor: Colors.black87,
                                      // border: InputBorder.none
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Category",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Center(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    controller: _category,
                                    decoration: const InputDecoration(
                                      // icon: Icon(Icons.account_balance),
                                      hintText: "Category",
                                      prefixIcon: Icon(
                                        Icons.category,
                                        color: Colors.black87,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.orangeAccent),
                                      ),
                                      focusColor: Colors.black87,
                                      // border: InputBorder.none
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Ammount",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Expanded(
                                child: Center(
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    controller: _ammount,
                                    decoration: const InputDecoration(
                                      // icon: Icon(Icons.account_balance),
                                      hintText: "Ammount",
                                      prefixIcon: Icon(
                                        Icons.currency_rupee,
                                        color: Colors.black87,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.orangeAccent),
                                      ),
                                      focusColor: Colors.black87,
                                      // border: InputBorder.none
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Note",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 59,
                              ),
                              Expanded(
                                child: Center(
                                    child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  controller: _note,
                                  decoration: const InputDecoration(
                                    hintText: "Enter the note",

                                    prefixIcon: Icon(
                                      Icons.note,
                                      color: Colors.black87,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orangeAccent),
                                    ),
                                    focusColor: Colors.black87,
                                    // border: InputBorder.none
                                  ),
                                  onTap: () async {},
                                )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, left: 20),
                            width: 140,
                            height: 40,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Colors.orange),
                            child: MaterialButton(
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 25),
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    controller.isShow.value = !controller.isShow
                        .value; //bane condition mukvi pade true and false
                    log("message");
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    width: Get.width * 1,
                    height: Get.height * 0.07,
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
                    child: const Center(
                      child: Text(
                        "Account",
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Obx(() {
                if (controller.isShow.value == true) {
                  return Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Cash",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Card",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Insurance",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(
                                right: 10, left: 10, top: 5),
                            width: Get.width * 0.2,
                            height: Get.height * 0.07,
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
                            child: const Center(
                              child: Text(
                                "Loan",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 18),
                              ),
                            )),
                      ),
                    ],
                  );
                } else {
                  return const Visibility(
                    visible: false,
                    child: Text("null"),
                  );
                }
              }),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    setState(() {
                      controller2.isShow1.value = !controller2.isShow1
                          .value; //bane condition mukvi pade true and false
                      log("message");
                    });
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    width: Get.width * 1,
                    height: Get.height * 0.07,
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
                    child: const Center(
                      child: Text(
                        "Category",
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Obx(() {
                if (controller2.isShow1.value == true) {
                  return Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Bonus",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Salary",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 5),
                          width: Get.width * 0.2,
                          height: Get.height * 0.07,
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
                          child: const Center(
                            child: Text(
                              "Other",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          )),
                      const SizedBox(width: 1),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(
                                right: 10, left: 10, top: 5),
                            width: Get.width * 0.2,
                            height: Get.height * 0.07,
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
                            child: const Center(
                              child: Text(
                                "Food",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 18),
                              ),
                            )),
                      ),
                    ],
                  );
                } else {
                  return const Visibility(
                    visible: false,
                    child: Text("null"),
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
