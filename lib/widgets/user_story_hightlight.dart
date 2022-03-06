// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class UserHightLight extends StatelessWidget {
  const UserHightLight({
    Key? key,
    required this.width,
    required this.title,
    required this.imagePath
  }) : super(key: key);

  final double width;
  final String title;
  final String imagePath;

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
                    color: Colors.grey.withOpacity(0.8)
                ),
              ),
              Container(
                width: width * 0.16 - 3,
                height: width * 0.16 - 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      (width * 0.16)/2
                    ),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(
                            imagePath),
                        fit: BoxFit.cover
                    ),
                    border: Border.all(
                      color: Colors.black, 
                      width: 2
                  )
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