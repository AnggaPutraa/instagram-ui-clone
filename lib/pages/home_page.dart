// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/friend_post.dart';
import 'package:instagram_ui_clone/widgets/home_story_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var faker =  Faker();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: height * 0.125,
              child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HomeStoryItem(
                  width: width, 
                  userName: faker.person.name(), 
                  index: index.toDouble(),
                ),
              ),
            ),
          Flexible(
            child: ListView.builder(
              itemCount: 40,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => FriendPost(
                width: width, 
                userName: faker.person.name(),
                index: index,
                caption: faker.lorem.sentence(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

