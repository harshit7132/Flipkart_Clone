import 'package:flutter/material.dart';

import '../bottom_nav_pages/account_page.dart';
import '../bottom_nav_pages/cart_page.dart';
import '../bottom_nav_pages/categories_page.dart';
import '../bottom_nav_pages/explore_page.dart';
import '../bottom_nav_pages/home_page.dart';
import '../custom_widgets/bottom_nav.dart';

class Bottom_Nav_Page extends StatefulWidget {
  const Bottom_Nav_Page({super.key});
  @override
  State<Bottom_Nav_Page> createState() => _Bottom_Nav_PageState();
}

class _Bottom_Nav_PageState extends State<Bottom_Nav_Page> {
  final List<Widget> screenList = [
    HomePage(),
    const ExplorePage(),
    const CategoriesScreen(),
    const AccountPage(),
    const CartPage(),
  ];
  int selectedTabIndex = 0;

  void onChangeTab(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedTabIndex],
      bottomNavigationBar: Custom_Bottom_Nav_Page(
          onChangeTab: onChangeTab, currentIndex: selectedTabIndex),
    );
  }
}
