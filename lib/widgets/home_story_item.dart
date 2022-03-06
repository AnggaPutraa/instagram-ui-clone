// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomeStoryItem extends StatelessWidget {
  const HomeStoryItem({
    Key? key,
    required this.width,
    required this.userName,
    required this.index
  }) : super(key: key);

  final double width;
  final String userName;
  final double index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: index == 0 ? 16 : 12
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
                      index == 0 
                      ? 'https://picsum.photos/id/507/500/500' 
                      : 'https://picsum.photos/${(index + 900).toInt()}/300'
                    ),
                    fit: BoxFit.cover
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 4
                  )
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            index == 0? 'Anggaaa': userName.substring(0, userName.indexOf(' ')),
            style: TextStyle(
              color: Colors.white,
            ),
            
          )
        ],
      ),
    );
  }
}