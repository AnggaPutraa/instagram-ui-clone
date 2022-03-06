// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/shop_custom_tab_item.dart';

class ShopCustomTabBarWithSearch extends StatelessWidget {
  const ShopCustomTabBarWithSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 4
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                  top: 4,
                  bottom: 2
                ),
                child: Container(
                  height: (height * 0.1)/2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[850]
                    ),
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none
                      ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(
              height: (height * 0.12)/2,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShopCustomTabItem(
                      categoryName: 'Shops',
                    ),
                    ShopCustomTabItem(
                      categoryName: 'Videos'
                    ),
                    ShopCustomTabItem(
                      categoryName: "Editors' picks"
                    ),
                    ShopCustomTabItem(
                      categoryName: 'Collections'
                    ),
                    ShopCustomTabItem(
                      categoryName: 'Guides'
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}