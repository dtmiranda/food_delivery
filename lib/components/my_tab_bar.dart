import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  

  const MyTabBar({
  super.key,
  required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          const Tab(
            icon: Icon(Icons.home),
          ),
          
          const Tab(
            icon: Icon(Icons.settings),
          ),
          
          const Tab(
            icon: Icon(Icons.person),
          ),
        ],
      )
    );
  }
}