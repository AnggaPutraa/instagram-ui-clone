// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'friend_profile.dart';

class FriendPost extends StatelessWidget {
  const FriendPost({
    Key? key,
    required this.width,
    required this.userName,
    required this.index,
    required this.caption
  }) : super(key: key);

  final double width;
  final String userName;
  final int index;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16
      ),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FriendProfile(
                        width: width * 0.6,
                        index: index, 
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16
                    ),
                    child: Icon(
                      Icons.menu_outlined,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4
              ),
              child: Container(
                width: width,
                height: width,
                child: Image.network(
                  'https://picsum.photos/id/${index + 500}/500/500',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.chat_bubble_outline_rounded,
                        color: Colors.white
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.send_outlined,
                        color: Colors.white
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16
                    ),
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Text(
                '123 Likes',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: ExpandableText(
              '$userName Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 14
              ),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              maxLines: 2,
              linkColor: Colors.grey[700],
            ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Text(
                'view all 123 comment',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Text(
                '2 days ago',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

