// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/explore_page.dart';
import 'package:instagram_ui_clone/pages/home_page.dart';
import 'package:instagram_ui_clone/pages/profile_page.dart';
import 'package:instagram_ui_clone/pages/reels_page.dart';
import 'package:instagram_ui_clone/pages/shop_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp>{

  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: currentIndex == 2 ? true : false,
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: footerNavBar(),
      resizeToAvoidBottomInset: false,
    );
  }
  PreferredSizeWidget? getAppBar(){
    if(currentIndex == 0){
      return AppBar(
        title: Text(
          'Instagram', 
          style: TextStyle(
            fontSize: 28
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Icon(Icons.add_box_outlined),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.favorite_border_outlined),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.message_outlined),
          SizedBox(
            width: 20,
          ),
        ],
      );
    } else if(currentIndex == 1){
      return AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[850]
          ),
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
                color: Colors.grey,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none
            ),
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      );
    } else if (currentIndex == 2){
      return AppBar(
        title: Text(
          'Reels',
          style: TextStyle(
            fontSize: 28
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 16
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 28,
            ),
          )
        ],
      );
    } else if (currentIndex == 3){
      return AppBar(
        title: Row(
          children: [
            Text(
              'Shop',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Icon(
            Icons.class__outlined
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Icon(
              Icons.dehaze_outlined
            ),
          ),
        ],
      );
    } else if(currentIndex == 4){
      return AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.lock_outlined),
            SizedBox(
              width: 10,
            ),
            Text("Anggaaaa"),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.arrow_drop_down_outlined)
          ],
        ),
        actions: [
          Icon(Icons.add_box_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.dehaze_outlined),
          SizedBox(
            width: 16,
          ),
        ],
      );
    }
  }
  Widget getBody(){
    List <Widget> pages = [
      HomePage(),
      ExplorePage(),
      ReelsPage(),
      ShopPage(),
      ProfilePage()
    ];
    return IndexedStack(
      index: currentIndex,
      children: pages
    );
  }
  Widget footerNavBar(){
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        onTap: (index) => setState((){
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 0 
            ? Icons.home 
            : Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 1
            ? Icons.search 
            : Icons.search_outlined), 
            label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 2 
            ? Icons.smart_display 
            : Icons.smart_display_outlined), 
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 3 
            ? Icons.local_mall 
            : Icons.local_mall_outlined),
            label: 'shopping_bag_rounded'
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://picsum.photos/id/507/500/500'),
              radius: MediaQuery.of(context).size.width / 30,
            ), 
            label: 'profile'
          ),
        ],
      );
  }
}

