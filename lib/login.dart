import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage('assets/pngIcons/download.jpg'),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 250),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                ),
                color: Colors.white),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Matri ID / Mobile Number / Email",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      labelStyle: TextStyle(color: Color(0xff961b20,),fontSize: 16),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),

                      ),

                      focusedBorder:const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xff961b20))),
                    ),
                    validator: (val) {},
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
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      labelStyle: TextStyle(color: Color(0xff961b20,),fontSize: 16),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder:const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xff961b20))),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {},
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child:const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff961b20), //button's fill color
                            onPrimary: Colors
                                .red, //specify the color of the button's text and icons as well as the overlay colors used to indicate the hover, focus, and pressed states
                            onSurface: Colors
                                .orange, //specify the button's disabled text, icon, and fill color
                            shadowColor:
                                Colors.black, //specify the button's elevation color
                            elevation: 4.0, //buttons Material shadow

                            padding: const EdgeInsets.only(
                                top: 4.0,
                                bottom: 4.0,
                                right: 8.0,
                                left: 8.0), //specify the button's Padding
                            minimumSize: Size(MediaQuery.of(context).size.width-40,
                                60), //specify the button's first: width and second: height

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          )),

                    ],
                  ),
              //  const  Expanded(child: SizedBox()),
                  SizedBox(height: 100,),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: "Don't have an Account ? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Create Account',
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
  }
}
