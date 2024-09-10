import 'package:flutter/material.dart';

class NavigationItem {
  final Icon icon;
  final Widget selectedIcon;
  final String label;

  NavigationItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}
