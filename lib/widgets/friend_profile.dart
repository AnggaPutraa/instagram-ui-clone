// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class FriendProfile extends StatelessWidget {
  const FriendProfile({
    Key? key,
    required this.width,
    required this.index
  }) : super(key: key);

  final double width;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: width * 0.175,
                height: width * 0.175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    width/2
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
              ),
              Container(
                width: width * 0.175 - 4,
                height: width * 0.175 - 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    width/2
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/id/${index + 500}/500/500'
                    ),
                    fit: BoxFit.cover
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2
                  )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}