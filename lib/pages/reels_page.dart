// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/reels_detail.dart';
import 'package:instagram_ui_clone/widgets/reels_side_icon_bar.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var faker =  Faker();
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 12,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black
          ),
          image: DecorationImage(
            image: NetworkImage('https://picsum.photos/id/${index + 500}/500/500'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.transparent
                    ],
                    begin: Alignment(0, -0.75),
                    end: Alignment(0, 0.1)
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent
                    ],
                    begin: Alignment(0, 0.1),
                    end: Alignment(0, -0.75)
                  )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 21,
                        child: ReelsDetail(
                          userName: faker.person.name(),
                          userPicture: 'https://picsum.photos/id/${index + 600}/500/500',
                        )
                      ),
                      Flexible(
                        flex: 2,
                        child: ReelsSideIconBar()
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}