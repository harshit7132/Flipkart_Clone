import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/app_constants/app_constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text("All Categories"),
        actions: const [
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(CupertinoIcons.search),
                Icon(Icons.mic_none_rounded),
              ],
            ),
          ),
        ],
      ),
      body: const _NavRail(),
    );
  }
}

class _NavRail extends StatefulWidget {
  const _NavRail();

  @override
  State<_NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<_NavRail> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: IntrinsicHeight(
              child: NavigationRail(
                backgroundColor: Colors.white,
                indicatorShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                destinations: List.generate(
                  AppConstants.navigationItems.length,
                  (index) => _buildNavigationDestination(index),
                ),
                selectedIndex: _selectedIndex,
                minExtendedWidth: 115,
                labelType: NavigationRailLabelType.selected,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        const Expanded(
          child: Column(), // Placeholder for actual content
        ),
      ],
    );
  }

  NavigationRailDestination _buildNavigationDestination(int index) {
    final item = AppConstants.navigationItems[index];
    final isSelected = _selectedIndex == index;

    return NavigationRailDestination(
      icon: _buildIcon(item.icon, item.label),
      selectedIcon:
          _buildSelectedIcon(item.selectedIcon, item.label, isSelected),
      label: const Text(''), // Empty label for NavigationRailDestination
    );
  }

  Widget _buildIcon(Icon icon, String label) {
    return Container(
      height: 80,
      width: 125,
      color: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            label,
            style: const TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedIcon(Widget icon, String label, bool isSelected) {
    return Container(
      height: 85,
      width: 125,
      color: isSelected ? Colors.white : Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            label,
            style: const TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

////default
///NavigationRail(
//                 backgroundColor: Colors.grey,
//                 minWidth: 115,
//                 indicatorShape: const ContinuousRectangleBorder(),
//                 indicatorColor: Colors.white,
//                 useIndicator: true,
//                 destinations: const <NavigationRailDestination>[
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: SizedBox(
//                       height: 50,
//                       child: Column(
//                         children: [
//                           Icon(Icons.favorite),
//                           Text(
//                             'For You',
//                             style: TextStyle(fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     label: Text(
//                       '',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Fashion',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Appliances',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Mobiles',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Electronics',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Home',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Furniture',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Beauty & Wellness',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Toys, Baby, Books',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Food & More',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Sports Hub',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Auto Accessories',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite_border),
//                     selectedIcon: Icon(Icons.favorite),
//                     label: Text(
//                       'Travel',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                 ],
//                 selectedIndex: _selectedIndex,
//                 labelType: NavigationRailLabelType.all,
//                 onDestinationSelected: (int index) {
//                   setState(() {
//                     _selectedIndex = index;
//                   });
//                 },
//               ),
