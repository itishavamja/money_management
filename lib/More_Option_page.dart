import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/Home_page.dart';

class MoreOptionPage extends StatefulWidget {
  const MoreOptionPage({super.key});


  @override
  State<MoreOptionPage> createState() => _MoreOptionPageState();
}

class _MoreOptionPageState extends State<MoreOptionPage> {
  //int size_of=10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: const Color.fromRGBO(225, 99, 28, .3),
          title: Text(
            "More",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                letterSpacing: 2,
                fontWeight: FontWeight.w600
            ),
          ),
          leading: IconButton(onPressed: (){
            Get.off(HomePage());
          }, icon: Icon(Icons.arrow_back_outlined,color: Colors.black87,)),
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(225, 95, 27, .3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),

                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    //Account
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_box,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Accounts",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Overall: 0",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 100,),
                              TextButton(
                                onPressed: (){},
                                child: Text(
                                  "ADD NEW",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    //Category
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.menu),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Category",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Add,Edit or Recorder category",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    //Export transacations
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.note_alt_outlined),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Export transacations",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Save your transaction into your device",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    //Setting
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Setting",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Customize your app",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),



                    //About banner
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),

                    //Feedback
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.feedback_outlined),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Feedback",
                                        style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "App feedbak or request for new update",
                                        style: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )git
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    //Rate
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Rate",
                                        style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Help us",
                                        style: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    //Share
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.share),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Share",
                                        style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Text(
                                        "Tell friend about this app",
                                        style: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    //About
                    Container(
                      //color: Colors.grey,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.error_outline),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "About",
                                        style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Verison 0.0.1",
                                        style: TextStyle(
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
