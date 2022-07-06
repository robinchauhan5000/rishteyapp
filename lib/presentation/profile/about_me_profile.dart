import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/presentation/profile/widgets/info_tile.dart';

import '../../models/get_profile_model.dart';


class AboutMe extends StatelessWidget{
  User ?userModel;
  AboutMe({Key? key, required this.userModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child: Column(children: [
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(width: 0,),


           title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

           children: [
              Text("Basic Info"),
             GestureDetector(
               onTap: (){
    showModalBottomSheet(

      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20.0))),
    context: context,
    builder: (context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius. only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0))),
     
      child: Wrap(

      children: [
        const Text(
          "Email",
          style:
          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
        ),
        const SizedBox(height: 5),
        TextFormField(
       //   controller: authController.email,
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
          height: 40,
        ),
        const Text(
          "Email",
          style:
          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
        ),
        const SizedBox(height: 5),
        TextFormField(
          //   controller: authController.email,
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
      ],
      ),
    );});


               },
               child: Container(

                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),),
             )
           ],
         ),
         children: [
           Container(

             child: Column(children: [
               infoTile(name: "Profile Created By: ",data:userModel!.profileCreatedFor),
               infoTile(name: "Gender: ",data: userModel!.gender),
               infoTile(name: "Marital Status: ",data: userModel!.maritalStatus),
               infoTile(name: "Height: ",data: userModel!.height.toString()),
               infoTile(name: "Health Information: ",data: userModel!.healthInfo),
               infoTile(name: "Any Disability: ",data: userModel!.anyDisability),
               infoTile(name: "Blood Group: ",data: userModel!.bloodGroup),
             ],),
           )
         ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(),
           title: Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[Text("Kundli & Astro"),Container(

           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)
           ]),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "Date Of Birth: ",data: userModel!.birthDateTime,),
                 infoTile(name: "Time Of Birth: ",data: userModel!.birthDateTime,),
                 infoTile(name: "Place Of Birth: ",data: userModel!.birthPlace,),
                 infoTile(name: "Horoscope Match is Must: ",data: "${userModel!.horoscopeNeeded}",),
                 infoTile(name: "Manglik: ",data: userModel!.manglik),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(),
           title: Row(

           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
    Text("Contact Details & Ads"),
           Container(

             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

         ],),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "Mobile Number: ",data: userModel!.mobileNumber.toString()),
                 infoTile(name: "Alternate Mobile Number: ",data: userModel!.alternateNumber),
                 infoTile(name: "Email ID: ",data: userModel!.email),
                 infoTile(name: "Whatsapp Number: ",data: userModel!.whatsappNumber),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(

           trailing: SizedBox(),
           title: Row(

               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [ Text("Religion & Background"),
                 Container(

                   padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

               ]),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "Religion: ",data: userModel!.religion),
                 infoTile(name: "Mother Tongue: ",data: userModel!.motherTongue),
                 infoTile(name: "Community: ",data: userModel!.cast),
                 infoTile(name: "Sub Community: ",data: userModel!.subCast),
                 infoTile(name: "Gotra : ",data: userModel!.gotra),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(),
           title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Text("Education Details"),
             Container(

               padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

           ],
         ),


           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "About My Education: ",data: userModel!.aboutMyEducation),
                 infoTile(name: "Highest Education: ",data: userModel!.education),
                 infoTile(name: "Any Other Qualification: ",data: userModel!.anyOtherQualifications),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(),
           title:Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Text("Carreer"),
             Container(

               padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

           ],
         ),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "About My Career: ",data: userModel!.aboutMyCareer),
                 infoTile(name: "Employed In: ",data: userModel!.employedIn),
                 infoTile(name: "Occupation: ",data: userModel!.occupation),
                 infoTile(name: "Organization Name: ",data: userModel!.organizationName),
                 infoTile(name: "Job Location : ",data: userModel!.jobLocation),
                 infoTile(name: "Annual Income: ",data: userModel!.annualIncome),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(
           trailing: SizedBox(),
           title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Text("Education Details"),
             Container(

               padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

           ],
         ),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "About My Family: ",data: userModel!.aboutFamily),
                 infoTile(name: "Father Name: ",data: userModel!.fatherName),
                 infoTile(name: "Father Occupation: ",data: userModel!.fatherOccupation),
                 infoTile(name: "Mother Name: ",data: userModel!.motherName),
                 infoTile(name: "Mother Occupation: ",data: userModel!.motherOccupation),
                 infoTile(name: "Number Of Brother (s): ",data: userModel!.noOfBrothers),
                 infoTile(name: "Married Brother (s): ",data: userModel!.marriedBrothers),
                 infoTile(name: "Number Of Sister (s): ",data: userModel!.noOfSisters),
                 infoTile(name: "Married Sister (s): ",data: userModel!.marriedSisters),
                 infoTile(name: "Family Income: ",data: userModel!.familyIncome),

               ],),
             )
           ],
         ),
       ),
       Container(
         margin: const EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
         child: ExpansionTile(

           trailing: SizedBox(),
           title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Text("LifeStyle"),
             Container(

               padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),decoration:BoxDecoration(borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.grey)),child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),)

           ],
         ),
           children: [
             Container(

               child: Column(children: [
                 infoTile(name: "Diet: ",data: userModel!.diet),
                 infoTile(name: "Is Drinking: ",data: userModel!.isDrinking),
                 infoTile(name: "Is Smoking: ",data: userModel!.isSmoking),


               ],),
             )
           ],
         ),
       ),
     ],),
   );
  }


}