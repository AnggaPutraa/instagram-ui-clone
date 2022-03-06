// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelsDetail extends StatelessWidget {
  const ReelsDetail({ 
    Key? key, 
    required this.userName,
    required this.userPicture
  }) : super(key: key);

  final String userName;
  final String userPicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              userName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
            leading: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(userPicture),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: ExpandableText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 14
              ),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.white,
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              'Music title - original music',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14
              ),
            ),
            leading: Icon(
              Icons.graphic_eq_outlined,
              color: Colors.white,
              size: 16,
            )
          ),
        ],
      ),
    );
  }
}