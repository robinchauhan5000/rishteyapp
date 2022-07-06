import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/presentation/register/create_profile_fior.dart';
import 'package:rishtey/presentation/register/sign_up.dart';

import '../../controller/auth_controller.dart';

class LoginPage2 extends StatefulWidget {
  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  AuthController? authController;
  double loginWidth = 350
  ;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    authController=Provider.of<AuthController>(context);
    return Scaffold(
        body: Consumer<AuthController>(
        builder: (context, authController, _)
    {
      return SafeArea(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pngIcons/Purple Login Screen.png"),
                  fit: BoxFit.fill)
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,


              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                   Center(child: Image.asset("assets/pngIcons/Group 24.png"),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.25,),

                    const Text(
                      "Matri ID / Mobile Number / Email",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
controller: email,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: "Enter Email",
                        hintStyle:  TextStyle(color: Color(0xff961b20,),
                            fontSize: 16),
                        fillColor: Colors.transparent,

                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a Valid Email address';
                        }
                        if (!RegExp(
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value)) {
                          return 'Enter a Valid Email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: password,
                      decoration: const InputDecoration(
                        filled: true,

                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                            color: Color(0xff961b20,), fontSize: 16),
                        fillColor: Colors.transparent,

                        //fillColor: Colors.green
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        if (value.length <7) {
                          return 'Enter a Valid Password';
                        }
                        return null;
                      },                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if(_formKey.currentState!.validate()){
                            setState(() {
                              loginWidth = 60;

                              Future.delayed(Duration(microseconds: 500), () {
                                setState(() async {
                                  // authController.isLoading=true;
                                  Response res=await authController.login(context,email.text,password.text);


                                  setState(() {
                                    loginWidth=350;
                                  });
                                });
                              });
                            });
                          }

                        },
                        child: AnimatedContainer(
                            width: loginWidth,
                            alignment: Alignment.center,
                            duration: Duration(microseconds: 500),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Color(0xffFF5D4B),
                                    Color(0xffFF7C57),

                                  ],
                                )),
                            child: Center(child: authController.isLoading
                                ? CircularProgressIndicator(color: Colors.white,)
                                : Text("Login", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),),)),
                      ),


                    ),
                    //  const  Expanded(child: SizedBox()),
                    SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                    // Center(
                    //   child: RichText(
                    //     text:  TextSpan(
                    //       text: "Don't have an Account ? ",
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.w400,
                    //           fontFamily: "Poppins"),
                    //       children: [
                    //         TextSpan(
                    //           onEnter: (val){
                    //             Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                    //           },
                    //             text: 'Create Account',
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Color(0xff961b20),
                    //                 fontSize: 16,
                    //                 fontFamily: "Poppins")),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an Account ?", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>  CreateProfileFor()));
                          },
                          child: const Text(
                              "Create Account", style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff961b20),
                              fontSize: 16,
                              fontFamily: "Poppins")),
                        ),

                      ],)
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}
