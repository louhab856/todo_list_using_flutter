import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title:Text('sidebare menu'),
          ),
          Divider(height: 10, thickness: 5),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title : Text('settings'),
            onTap: (){},
          ),                    ListTile(
            leading: Icon(Icons.alarm),
            title : Text('Alarm'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}