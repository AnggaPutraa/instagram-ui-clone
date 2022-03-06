// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width * 0.25,
          height: width * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                (width * 0.25)/2
              ),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
            )
          ),
        ),
        Container(
          width: width * 0.25 - 5,
          height: width * 0.25 - 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              (width * 0.25)/2
            ),
            image: DecorationImage(
                image: NetworkImage(
                    'https://picsum.photos/id/507/500/500'),
                fit: BoxFit.cover
              ),
            border: Border.all(
              color: Colors.black, 
              width: 4
              )
            ),
        ),
        // Positioned(
        //   top: 80,
        //   bottom: 0,
        //   right: 10,
        //   child: Container(
        //     height: 30,
        //     width: 30,
        //     decoration: BoxDecoration(
        //       border: Border.all(
        //         color: Colors.black,
        //         width: 3
        //       ),
        //       borderRadius: BorderRadius.circular(30/2),
        //       color: Colors.blue
        //     ),
        //     child: IconButton(
        //       padding: EdgeInsets.zero,
        //       onPressed: (){},
        //       icon: Icon(Icons.add),
        //       iconSize: 20,
        //       color: Colors.white,
        //     ),
        //   )
        // )
      ],
    );
  }
}
