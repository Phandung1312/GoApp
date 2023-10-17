

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

   BottomNavBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 28,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 74,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceAround,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  }) {
    assert(items.length >= 2 && items.length <= 5);
  }
  @override
  Widget build(BuildContext context) {
    final bgColor = (backgroundColor == null)
    ? Theme.of(context).bottomAppBarTheme.color
    : backgroundColor;
    return Container(
      decoration: BoxDecoration(
        color: bgColor
      ),
      child: SafeArea(child: Container(
        width: double.infinity,
        height: containerHeight,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index), 
                 
              );
          }).toList(),
        ),
      )),
    );
  }

}

class BottomNavBarItem {
  final Icon icon;
  final Text title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;

  BottomNavBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.greenAccent ,
    this.textAlign,
    this.inactiveColor,
  });
}