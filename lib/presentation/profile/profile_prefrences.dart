import 'package:flutter/material.dart';
import 'package:rishtey/presentation/profile/widgets/info_tile.dart';

class Prefrences extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
          child: ExpansionTile(title: const Text("Basic Info"),
            children: [
              Container(

                child: Column(children: [
                  infoTile(name: "Age: ",data: "165 cm"),
                  infoTile(name: "Marital Status: ",data: "Unmarried"),
                  infoTile(name: "Height: ",data: "165 cm"),


                ],),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
          child: ExpansionTile(title:const Text("Religion & Community"),
            children: [
              Container(

                child: Column(children: [
                  infoTile(name: "Religion: ",data: "Brother"),
                  infoTile(name: "Mother Tongue: ",data: "Male"),
                  infoTile(name: "Community: ",data: "Unmarried"),
                  infoTile(name: "Mother Tongue: ",data: "165 cm"),

                ],),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
          child: ExpansionTile(title: const Text("Partner Education & Occupation"),
            children: [
              Container(

                child: Column(children: [

                  infoTile(name: "Highest Education: ",data: "Male"),
                  infoTile(name: "Occupation: ",data: "Male"),

                  infoTile(name: "Annual Income: ",data: "Unmarried"),

                ],),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
          child: ExpansionTile(title: const Text("Partner Location"),
            children: [
              Container(

                child: Column(children: [
                  infoTile(name: "Country: ",data: "Brother"),
                  infoTile(name: "State: ",data: "Male"),
                  infoTile(name: "City: ",data: "Unmarried"),

                ],),
              )
            ],
          ),
        ),



        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
          child: ExpansionTile(title: const Text("Partner's LifeStyle & Appearances"),
            children: [
              Container(

                child: Column(children: [
                  infoTile(name: "Diet: ",data: "Brother"),
                  infoTile(name: "Is Drinking: ",data: "Male"),
                  infoTile(name: "Is Smoking: ",data: "Unmarried"),


                ],),
              )
            ],
          ),
        ),
      ],),
    );
  }


}