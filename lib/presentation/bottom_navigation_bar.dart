import 'package:flutter/material.dart';
import 'package:rishtey/presentation/dashboard/dash_board_screen.dart';
import 'package:rishtey/presentation/my_interests/my_interest.dart';
import 'package:rishtey/utils/theme_clas.dart';

import 'all_search/quick_search.dart';
import 'bottom_bar_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final _inactiveColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Row(
            children: [
              Container(

                height: 100,
                width: 85,

                decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/pngIcons/Purple Login Screen.png"),fit: BoxFit.fill)),
                child: Image.asset("assets/pngIcons/logo_icon 1.png",fit: BoxFit.fitWidth,),
              ),
              const Text(
                'Him Rishtey',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ],
          ),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/sideimg.jpg'))),
        ),
const ListTile(title: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20),),leading: Icon(Icons.home),),
const ListTile(title: Text("My Membership",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20)),leading: Icon(Icons.home),),
 ListTile(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuickSearch()));
  },
  title: const Text("Quick Search",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20)),leading: const Icon(Icons.home),),
const ListTile(title: Text("Advance Search",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20)),leading: Icon(Icons.home),),
const ListTile(title: Text("Search By Profile Id"),leading: Icon(Icons.home),),
const ListTile(title: Text("Matching Profile"),leading: Icon(Icons.home),),
const ListTile(title: Text("ShortListed Profile"),leading: Icon(Icons.home),),
const ListTile(title: Text("My Contact"),leading: Icon(Icons.home),),
const ListTile(title: Text("Refer & Earn"),leading: Icon(Icons.home),),
const ListTile(title: Text("Success Stories"),leading: Icon(Icons.home),),
const ListTile(title: Text("Delete Profile"),leading: Icon(Icons.home),),
const ListTile(title: Text("Refund & Cancellation"),leading: Icon(Icons.home),),

      ],
    ),
    ),
      key: _scaffoldKey,
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: primaryColor,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          key: _scaffoldKey,
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          key: _scaffoldKey,
          icon: const Icon(Icons.people),
          title: const Text('Interest'),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: const Text(
            'Chat ',
          ),
          key: _scaffoldKey,
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Other'),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
          key: _scaffoldKey,
        ),
        BottomNavyBarItem(
          key: _scaffoldKey,
          icon: GestureDetector(
              onTap: (){
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(Icons.settings)),
          title: GestureDetector(
              onTap: (){
                _scaffoldKey.currentState!.openEndDrawer();
              },child: const Text('Menu')),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child:DashBoardScreen()
      ),
      Container(
        alignment: Alignment.center,
        child: MyInterest()
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}


