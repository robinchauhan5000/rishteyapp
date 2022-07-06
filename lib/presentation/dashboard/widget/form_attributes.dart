import 'package:flutter/material.dart';
import 'package:rishtey/utils/app_config.dart';

class FormAttributes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: AppConfig.width*0.5,
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 7),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Colors.white),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       Stack(
         children: [
           Container(
             width: 40,
             height: 40,
             decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.grey.shade400)),
             child: Center(child: Icon(Icons.shopping_bag,color: Colors.grey.shade400,size: 20,),),),
           Positioned(
               right: 0,
               bottom: 0,
               child: Container(
             width: 20,
             height: 20,

             decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.pink, ),
             child: Icon(Icons.add,color: Colors.white,size: 15,),))
         ],
       ),
        Container(width: 20,height: 20,color: Colors.green.withOpacity(0.2),)
      ],),
        Text("Contact Details",style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 14),),
        Text("Add Contact Details to member reaches you",style: Theme.of(context).textTheme.bodyText1,),
    ],) ,);
  }
}