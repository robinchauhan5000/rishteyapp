import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/presentation/register/sign_up_second.dart';
import 'package:rishtey/utils/app_snack_bar.dart';

import '../../controller/auth_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthController? authController;

  final registerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    authController = Provider.of<AuthController>(context);
    return Scaffold(
        body: Consumer<AuthController>(builder: (context, authController, _) {
      return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              child: Form(
                key: registerKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(child:  Text("Welcome to world of Relationship",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),)),
SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [

                        Container(

                          height: 100,
                          width: 85,

                          decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/pngIcons/Purple Login Screen.png"),fit: BoxFit.fill)),
                          child: Image.asset("assets/pngIcons/logo_icon 1.png",fit: BoxFit.fitWidth,),
                        ),
                      ],
                    ),
                    const Center(child:  Text("Basic Details",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),)),
                    const SizedBox(height: 20,),

                    const Text(
                      "Full Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      controller: authController.fullName,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: "Enter your full name",
                        labelStyle: TextStyle(
                            color: Color(
                              0xff961b20,
                            ),
                            fontSize: 16),
                        fillColor: Colors.transparent,

                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Full Name';
                        }
                        if (value.length <=3) {
                          return 'Full Name Length Should be More than 3';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: authController.email,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: "Enter Valid Email-id",
                        labelStyle: TextStyle(
                            color: Color(
                              0xff961b20,
                            ),
                            fontSize: 16),
                        fillColor: Colors.transparent,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
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
                      "Phone Number",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      inputFormatters: [
                         LengthLimitingTextInputFormatter(10),
                      ],
                      controller: authController.phoneNumber,
                      decoration: const InputDecoration(
                        filled: true,
                        hintText: "Enter Phone Number",
                        labelStyle: TextStyle(
                            color: Color(
                              0xff961b20,
                            ),
                            fontSize: 16),
                        fillColor: Colors.transparent,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Phonenumber';
                        }
                        if (value.length <=9) {
                          return 'Phone Number Length Should be 10 Digit';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: authController.password,
                      decoration: const InputDecoration(
                        filled: true,

                        hintText: "Create Your Password",
                        labelStyle: TextStyle(
                            color: Color(
                              0xff961b20,
                            ),
                            fontSize: 16),
                        fillColor: Colors.transparent,
errorMaxLines: 3,
                        //fillColor: Colors.green
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        } else if (value != null &&
                            value.isNotEmpty &&
                            value.length <= 5) {
                          return 'Password Length Should be greater than 6';
                        }
                       else if (!RegExp(
                            r'^(?=.*?[a-z])(?=.*?[0-9]).{6,}$')
                            .hasMatch(value)) {
                          return 'Password should contain   at least one lower case and at least one digit  ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //  const  Expanded(child: SizedBox()),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (registerKey.currentState!.validate()) {
                            setState(() {
                              authController.loginWidth = 60;

                              Future.delayed(const Duration(microseconds: 500),
                                  () {
                                setState(() {
                                  // authController.isLoading=true;
                                  authController
                                      .signup(
                                          context, "user/step_one_registration")
                                      .then((res) => {
                                            if (res.statusCode == 200 ||
                                                res.statusCode == 201)
                                              {
                                                setState(() {
                                                  authController.loginWidth = 350;
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SignUpSecond()));
                                                })
                                              }
                                          });
                                });
                              });
                            });
                          }
                        },
                        child: AnimatedContainer(
                            width: authController.loginWidth,
                            alignment: Alignment.center,
                            duration: const Duration(microseconds: 500),
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
                            child: Center(
                              child: authController.isLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Next Step",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                            )),
                      ),
                    ),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          text: "Already have an Account ? ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff961b20),
                                    fontSize: 16,
                                    fontFamily: "Poppins")),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
  bool validateStructure(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
