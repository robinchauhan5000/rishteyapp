import 'package:flutter/material.dart';




class MyInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Interest'),
            bottom: const TabBar(
              isScrollable: true,
              padding: EdgeInsets.symmetric(horizontal: 5),
              tabs: [
                Tab( text: "Recieved Interest"),
                Tab(text: "Accepted Interest"),
                Tab( text: "Rejected Interest"),
                Tab( text: "Pending Interest"),
                Tab( text: "Pending Interest"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
            Expanded(child: Center(child: Text("Received Interest"),),),
            Expanded(child: Center(child: Text("Accepted Interest"),),),
              Expanded(child: Center(child: Text("Rejected Interest"),),),
              Expanded(child: Center(child: Text("Pending Interest"),),),
              Expanded(child: Center(child: Text("Pending Interest"),),),
            ],
          ),
        ),
      ),
    );
  }
}