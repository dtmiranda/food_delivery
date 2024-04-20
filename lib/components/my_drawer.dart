import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all( 25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home lista tile
          MyDrawerTile(
            icon: Icons.home,
            text: 'HOME',
            onTap: () => Navigator.pop(context),
          ),  

          MyDrawerTile(
            icon: Icons.settings,
            text: 'SETTINGS',
            onTap: ()  {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage())
              
              );
            }
          ),

          const Spacer(),

          MyDrawerTile(
            icon: Icons.logout,
            text: 'LOGOUT',
            onTap: () {},
          ),

          const SizedBox(height: 25,)
  
        ],
      )
    );
  }
}