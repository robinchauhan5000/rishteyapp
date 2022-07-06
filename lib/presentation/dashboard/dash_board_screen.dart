import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/controller/auth_controller.dart';
import 'package:rishtey/presentation/dashboard/widget/form_attributes.dart';
import 'package:rishtey/presentation/dashboard/widget/interest_profile.dart';
import 'package:rishtey/utils/app_config.dart';

import '../../controller/dashboard_controller.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DashBoardController? dashBoardController;
  AuthController? authController;
@override
  void initState() {
  dashBoardController=Provider.of<DashBoardController>(context,listen: false);
  authController=Provider.of<AuthController>(context,listen: false);

  Future.delayed(Duration(milliseconds: 100),(){

  dashBoardController!.getDashBoardProfiles(context, "Male");

    authController!.getReligion(context);
    authController!.getCastes(context);
}) ;   super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    AppConfig.init(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: const [
              Text(
                "Hi , Ritish",
              )
            ],
          ),
          actions: const [
            Icon(Icons.notifications_active),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.settings),
            SizedBox(
              width: 20,
            )
          ],
        ),
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: const Icon(
                    Icons.chat
                ),
                onPressed: () {
                  //...
                },
                heroTag: null,
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                backgroundColor: Colors.pinkAccent,
                child: const Icon(
                    Icons.search
                ),
                onPressed: () =>null,
                heroTag: null,
              )
            ]
        ),
        body: SingleChildScrollView(
          child: Consumer<DashBoardController>(
            builder: (context,controller,child) {
              return controller.isLoading?Center(child: CircularProgressIndicator(),):Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.21,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.dashBoardProfilesModel!.user!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InterestProfile(
                              data:controller.dashBoardProfilesModel!.user!.elementAt(index)
                            );
                          }),
                    ),
                    SizedBox(
                      height: AppConfig.height * 0.03,
                    ),
                    Container(
                      color: Colors.red.shade200.withOpacity(0.4),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Attract More Profiles !!",
                            style: textTheme.headline6!.copyWith(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Start getting 2x more interests & acceptances by completing your profile",
                              style: textTheme.bodyText1),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: const Icon(Icons.person),
                                backgroundColor: Colors.grey.shade200,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Profile Score 36%",
                                    style:
                                        textTheme.headline3!.copyWith(fontSize: 15),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * .7,
                                    child: LinearProgressIndicator(
                                      value: 0.7,
                                      backgroundColor: Colors.grey.shade400,
                                      valueColor: const AlwaysStoppedAnimation<Color>(
                                          Colors.green),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: AppConfig.height * 0.15,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return FormAttributes();
                                }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text("Daily Recommendations ",style: textTheme.headline6!.copyWith(fontSize: 16),),
                        Text("119",style: textTheme.bodyText1!.copyWith(fontSize: 16),),
                        const Spacer(),
                        const Text("View All",style: TextStyle(color: Colors.pink),)
                      ],),
                    ),
                    Text("Matches Suggested Just For You",style: textTheme.bodyText1!.copyWith(fontSize: 14,fontWeight: FontWeight.w800),)
                    ,SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            print("${controller.dashBoardProfilesModel!.user!.elementAt(index)}");
                            return InterestProfile( data:controller.dashBoardProfilesModel!.user!.elementAt(index));
                          }),
                    ),
                  ],
                ),
              );
            }
          ),
        ));
  }
}
