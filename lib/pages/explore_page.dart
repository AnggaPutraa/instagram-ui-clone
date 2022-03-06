// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 3,
      itemCount: 500,
      itemBuilder: (context, index) => Container(
        child: Image.network(
          'https://picsum.photos/id/${index+106}/200/300',
          fit: BoxFit.cover,
        ),
      ),
      staggeredTileBuilder: (index) => StaggeredTile.count(
        (index % 7 == 0) ? 2 : 1, 
        (index % 7 == 0) ? 2 : 1
      ),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
    );
  }
}