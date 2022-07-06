import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishtey/presentation/profile/profile_prefrences.dart';

import '../../controller/get_profile_controller.dart';
import 'about_me_profile.dart';

class PersonalProfile extends StatefulWidget{
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile>  with SingleTickerProviderStateMixin {
  TabController? _tabController;
  GetProfileController?getProfileController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    getProfileController=Provider.of<GetProfileController>(context,listen: false);
    getProfileController!.getProfile(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {

    print("odsnxkv;ma${getProfileController?.getProfileModel?.data?.user?.fullName}");
   return Scaffold(
     appBar: AppBar(title: const Text("Personal Profile"),)

     ,
     body: Consumer<GetProfileController>(
       builder: (context,controller,child) {
         return controller.isLoading?CircularProgressIndicator():
         Container(
           padding: const EdgeInsets.all(10),
           child: Column(


           children: [
           Container(
             child: Row(

             children: [
             const CircleAvatar(backgroundColor: Colors.blue,
             radius: 50,
             ),
             const SizedBox(width: 30,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
               Row(children:  [
                const Text("User Name: ",style: TextStyle(fontSize: 16,),),
                 Text("${controller.getProfileModel?.data?.user?.fullName}",style:const TextStyle(fontSize: 16,fontWeight: FontWeight.w800)),

               ],),
               Row(children:  [
                 const   Text("Age: ",style: TextStyle(fontSize: 16,),),
                 Text("${controller.getProfileModel?.data?.user?.birthDateTime} ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800)),

               ],),

               Row(children: const [
                 Text("Plan: ",style: TextStyle(fontSize: 16,),),
                 Text("Silver ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800)),

               ],),
             ],)
           ],),),
             const Divider(thickness: 1,height: 20,color: Colors.grey,),

                   // give the tab bar a height [can change hheight to preferred height]
                   Container(
                     height: 45,
                     decoration: BoxDecoration(
                       color: Colors.grey[300],
                       borderRadius: BorderRadius.circular(
                         25.0,
                       ),
                     ),
                     child: TabBar(
                       controller: _tabController,
                       // give the indicator a decoration (color and border radius)
                       indicator: BoxDecoration(
                         borderRadius: BorderRadius.circular(
                           25.0,
                         ),
                         color: Colors.green,
                       ),
                       labelColor: Colors.white,
                       unselectedLabelColor: Colors.black,
                       tabs: const [
                         // first tab [you can add an icon using the icon property]
                         Tab(
                           text: 'About Me',
                         ),

                         // second tab [you can add an icon using the icon property]
                         Tab(
                           text: 'Preferences',
                         ),
                       ],
                     ),
                   ),
                   // tab bar view here
                   Expanded(
                     child: TabBarView(
                       controller: _tabController,
                       children:  [
                         // first tab bar view widget
                         AboutMe(userModel:getProfileController?.getProfileModel?.data?.user),

                         // second tab bar view widget
                         Prefrences()
                       ],
                     ),
                   ),



           ],),);
       }
     ),

   );
  }
}