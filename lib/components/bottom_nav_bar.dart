import 'package:coffeeapp/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: barcolor,
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey.shade700,
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 24,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Cart",
            ),
          ]),
    );
  }
}
