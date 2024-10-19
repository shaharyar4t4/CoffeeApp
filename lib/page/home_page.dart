import 'package:coffeeapp/components/bottom_nav_bar.dart';
import 'package:coffeeapp/const/colors.dart';
import 'package:coffeeapp/page/cart_page.dart';
import 'package:coffeeapp/page/shop_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  //navigate bottom bar
  int _selectedIndex =0;
  void navigateBottomBar (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page/Home page
    ShopPage(),
    // cart page
    CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGcolor,
      bottomNavigationBar: MyBottomBar(
        onTabChange: (index)  => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );

  }
}
