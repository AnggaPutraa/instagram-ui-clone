// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/add_hightlight.dart';
import 'package:instagram_ui_clone/widgets/user_profile.dart';
import 'package:instagram_ui_clone/widgets/user_story_hightlight.dart';
import 'package:instagram_ui_clone/widgets/user_value_detail.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    TabController _tabController = TabController(length: 2, vsync: this);
    return ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Row(
              children: [
                UserProfile(
                  width: width
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserValueDetail(
                        title: 'Posts', 
                        count: '10'
                      ),
                      UserValueDetail(
                        title: 'Followers', 
                        count: '955'
                      ),
                      UserValueDetail(
                        title: 'Following', 
                        count: '813'
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              'Anggaaaa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              'https://pub.dev',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueAccent[100]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Text(
              "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.8,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.white
                    )
                  ),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width * 0.1,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.white
                    )
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      color: Colors.white,
                    )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: height * 0.125,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 7
                ? AddHightLight(
                  width: width, 
                  title: 'New'
                ) 
                : UserHightLight(
                  width: width, 
                  title: 'Hightlight',
                  imagePath: 'https://picsum.photos/id/${index + 500}/500/500',
                ),
              ),
            ),

          TabBar(
            controller: _tabController,
            indicatorWeight: 1,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.assignment_ind_outlined),
              ),
            ]
          ),
          Container(
            width: double.infinity,
            height: width/3 * 4,
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                  itemBuilder: (context, index) => Image.network(
                    'https://picsum.photos/id/${index + 500}/500/500',
                    fit: BoxFit.fill,
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                  itemBuilder: (context, index) => Image.network(
                    'https://picsum.photos/id/${index + 50}/500/500',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          )
        ],
      );
  }
}