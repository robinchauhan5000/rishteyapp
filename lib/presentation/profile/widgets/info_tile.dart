import 'package:flutter/material.dart';

Widget infoTile({required String name,required String data, }){
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(children: [
      Text(name,style: const TextStyle(fontSize: 16,),),
      const SizedBox(width: 10,),
      Text(data,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w800)),
      const Spacer(),

    ],),
  );

}