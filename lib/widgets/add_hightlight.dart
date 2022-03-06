// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class AddHightLight extends StatelessWidget {
  const AddHightLight({
    Key? key,
    required this.width,
    required this.title
  }) : super(key: key);

  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: width * 0.16,
                height:  width * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((width * 0.16)/2),
                    color: Colors.transparent
                ),
              ),
              Container(
                width: width * 0.16 - 3,
                height: width * 0.16 - 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      (width * 0.16)/2
                    ),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.8), 
                      width: 1
                  )
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}