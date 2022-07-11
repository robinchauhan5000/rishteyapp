import 'package:flutter/material.dart';
import 'package:rishtey/presentation/my_interests/PendingInterest.dart';
import 'package:rishtey/utils/app_config.dart';

import '../../utils/theme_clas.dart';
import 'AcceptedInterest.dart';
import 'RecievedInterest.dart';
import 'RejectedInterest.dart';
import 'SentInterestList.dart';

class MyInterest extends StatefulWidget {
  @override
  State<MyInterest> createState() => _MyInterestState();
}

class _MyInterestState extends State<MyInterest> {
  @override
  void initState() {
    print("Ritis");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppConfig.theme.primaryColor,
            title: const Text('My Interest'),
            bottom: const TabBar(
              isScrollable: true,
              padding: EdgeInsets.symmetric(horizontal: 5),
              labelStyle: TextStyle(color: Colors.white),
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Recieved Interest"),
                Tab(text: "Accepted Interest"),
                Tab(text: "Rejected Interest"),
                Tab(text: "Sent Interest"),
                Tab(text: "Pending Interest"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height: AppConfig.height,
                child: ReceivedInterestList(),
              ),
              Container(
                height: AppConfig.height,
                child: AcceptedInterestList(),
              ),
              Container(
                height: AppConfig.height,
                child: RejectedInterestList(),
              ),
              Container(
                height: AppConfig.height,
                child: SentInterestList(),
              ),
              Container(
                height: AppConfig.height,
                child: PendingInterestList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
