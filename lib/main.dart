import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/login.dart';
import 'package:rishtey/presentation/bottom_navigation_bar.dart';
import 'package:rishtey/presentation/dashboard/dash_board_screen.dart';
import 'package:rishtey/presentation/profile/personal_profile.dart';
import 'package:rishtey/presentation/register/add_image_signup.dart';
import 'package:rishtey/presentation/register/sign_up_fourth.dart';
import 'package:rishtey/presentation/splash_screen/splash_screen.dart';
import 'package:rishtey/utils/theme_clas.dart';

import 'controller/ImagePickerController.dart';
import 'controller/auth_controller.dart';
import 'controller/dashboard_controller.dart';
import 'controller/get_profile_controller.dart';
import 'controller/search_controller.dart';
import 'firebase_options.dart';
import 'presentation/login/login_2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseMessaging.instance.getToken().then((String? fcm) {
      // AppData.fcmToken = "$fcm";
      print("FcmToken => $fcm");

    });    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
    ChangeNotifierProvider<AuthController>(
    create: (context) => AuthController(),
    ),
        ChangeNotifierProvider<ImagePickerController>(create: (context)=>ImagePickerController()),
        ChangeNotifierProvider<GetProfileController>(create: (context)=>GetProfileController()),
        ChangeNotifierProvider<DashBoardController>(create: (context)=>DashBoardController()),
        ChangeNotifierProvider<SearchController>(create: (context)=>SearchController()),
        ],
      child: MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home:  MyHomePage(),
      ),
    );
  }
}


