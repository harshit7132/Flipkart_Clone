import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_Bottom_Nav_Page extends StatelessWidget {
  const Custom_Bottom_Nav_Page(
      {super.key, required this.onChangeTab, required this.currentIndex});

  final Function(int) onChangeTab;
  final int currentIndex;

  void onTap(index, context) {
    onChangeTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTap(index, context),
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(CupertinoIcons.compass),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.category),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(CupertinoIcons.person),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(CupertinoIcons.cart),
          label: 'Cart',
        ),
      ],
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 11,
      unselectedFontSize: 11,
    );
  }
}
