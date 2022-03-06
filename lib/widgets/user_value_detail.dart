// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class UserValueDetail extends StatelessWidget {
  const UserValueDetail({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
              color: Colors.white
          ),
        ),
        Text(
          title,
        style: TextStyle(
          color: Colors.white
          ),
        ),
      ],
    );
  }
}