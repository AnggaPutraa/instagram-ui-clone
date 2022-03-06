// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ReelsSideIconBar extends StatelessWidget {
  const ReelsSideIconBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height*0.325,
      child: Column(
        children: [
          Icon(
            Icons.favorite_outline,
            size: 28,
            color: Colors.white,
          ),
          Text(
            '999k',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            )
          ),
          Spacer(
            flex: 1,
          ),
          Icon(
            Icons.chat_bubble_outline_rounded,
            size: 28,
            color: Colors.white,
          ),
          Text(
            '999k',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            )
          ),
          Spacer(
            flex: 1,
          ),
          Icon(
            Icons.send_outlined,
            size: 28,
            color: Colors.white,
          ),
          Spacer(
            flex: 1,
          ),
          Icon(
            Icons.more_horiz,
            size: 28,
            color: Colors.white,
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2
              ),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://picsum.photos/seed/picsum/200/300')
              )
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}