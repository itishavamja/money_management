// import 'package:flutter/material.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//          body: Container(
//            height: 900,
//            width: 900,
//            color: Colors.orange,
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                SizedBox(height: 70,),
//                Padding(
//                  padding:EdgeInsets.all(30),
//                  child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text(
//                          "LOGIN", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
//
//                        SizedBox(height: 6,),
//
//                        Text(
//                          "welcome Back..", style: TextStyle(color: Colors.black, fontSize: 20,),)
//                      ]),
//                ),
//                SizedBox(height: 30,),
//                SingleChildScrollView(child: SingleChildScrollView(
//                  scrollDirection: Axis.vertical,
//                ),),
//                Expanded(
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color:Colors.white,
//                        borderRadius:BorderRadius.only(
//                            topLeft: Radius.circular(60),
//                            topRight: Radius.circular(60)),
//                      ),child: Padding(
//                      padding: EdgeInsets.all(20),
//                      child: Column(
//                        children: [
//                          SizedBox(height: 60),
//
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius:(BorderRadius.circular(20)),
//                              boxShadow: [
//                                BoxShadow(
//                                color: Color.fromRGBO(225, 95, 27, .3),
//                                blurRadius: 20,
//                                offset: Offset(0,10),
//                              )],
//                            ),
//                            padding: EdgeInsets.all(20),
//                            child: Column(
//                              children: [
//                                Container(
//                                  decoration: BoxDecoration(
//                                      border : Border(bottom: BorderSide(color: Colors.grey))
//                                  ),
//                                  child: TextField(
//                                    decoration: InputDecoration(
//                                        hintText: "Email or Phone number.",
//                                        prefixIcon: Icon(Icons.phone),
//                                        hintStyle: TextStyle(color: Colors.grey),
//                                        border: InputBorder.none
//                                    ),
//                                  ),
//                                ),
//                                SizedBox(height:3 ),
//                                Container(
//                                  decoration: BoxDecoration(
//                                      border : Border(bottom: BorderSide(color: Colors.grey))
//                                  ),
//                                  child: TextField(
//                                    decoration: InputDecoration(
//                                        hintText: "Password",
//                                        hintStyle: TextStyle(color: Colors.grey),
//                                        prefixIcon:Icon(Icons.security),
//                                        border: InputBorder.none
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          SizedBox(height: 40),
//                          Text("Forgot Password ?",style: TextStyle(color: Colors.grey),),
//                          SizedBox(height: 40),
//                          Container(
//                            height: 50,
//                            margin: EdgeInsets.symmetric(horizontal: 45),
//                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50),
//                                color: Colors.orange
//                            ),
//                            child: Center(
//                              child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                            ),
//                          ),
//                          SizedBox(height: 30),
//                          Text("Continue with this actions",style: TextStyle(color: Colors.grey),),
//                          SizedBox(height: 30),
//                          Row(
//                            children: [
//                              Expanded(child:  Container(
//                                height: 50,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.circular(50),
//                                  color: Colors.blue,
//                                ),
//                                child: Center(
//                                  child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                                ),
//                              ),
//                              ),
//                              SizedBox(width: 30),
//                              Expanded(child:Container(height: 50,
//                                decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(50),
//                                    color: Colors.black
//                                ),
//                                child: Center(
//                                  child: Text("Phone no.",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                                ),
//                              ) )
//                            ],
//                          )
//                        ],
//                      ),
//                    ),
//                    )),
//              ],),
//          )
//      );
//
//
//   }
// }
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: Get.width * 3,
                  height: Get.height * 1,
                  color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: Get.height * 0.1, left: Get.width * 0.1),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //SizedBox(height: Get.width*0.07,),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Get.height * 0.0, left: Get.width * 0.1),
                        child: const Text("welcome back..",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      Expanded(
                        child: Container(
                          width: Get.width * 1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60)),
                            color: Colors.white,
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.06),
                            child: Column(
                              children: [
                                Container(
                                  width: Get.width * 0.9,
                                  height: Get.height * 0.2,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey)),
                                        ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              hintText:
                                                  "Email or Phone number.",
                                              prefixIcon: Icon(Icons.phone),
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      SizedBox(height: Get.height * 0.02),
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey)),
                                        ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              hintText: "Password",
                                              prefixIcon: Icon(Icons.security),
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: Get.width * 0.1),
                                const Text(
                                  "Forgot Password ?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: Get.width * 0.1,
                                ),
                                MaterialButton(
                                    onPressed: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          right: Get.width * 0.02),
                                      height: Get.height * 0.07,
                                      width: Get.width * 0.6,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: Colors.orange,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(



                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      // child: Padding(padding: EdgeInsets.only(top:20,left: 65,right: 65),
                                      // child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                                      // )
                                    )),
                                SizedBox(
                                  height: Get.width * 0.1,
                                ),
                                const Text("Continue with other actions",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                                SizedBox(
                                  height: Get.width * 0.1,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                          onPressed: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: Get.width * 0.02),
                                            height: Get.height * 0.07,
                                            width: Get.width * 0.8,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.blueAccent,
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "Facebook",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // child: Padding(padding: EdgeInsets.only(top:20,left: 65,right: 65),
                                            //   child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                                          )),
                                    ),
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: Get.width * 0.02),
                                          height: Get.height * 0.07,
                                          width: Get.width * 0.8,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            color: Colors.black87,
                                          ),
                                          child: const Center(
                                            child: Text("Phone number",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          // child: Padding(padding: EdgeInsets.only(top:20,left: 65,right: 65),
                                          //   child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
