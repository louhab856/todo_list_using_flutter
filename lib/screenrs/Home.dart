import 'package:flutter/material.dart';
import 'package:flutter_application_1/screenrs/componenets/app_drawer.dart';
import 'package:flutter_application_1/screenrs/componenets/body.dart';



class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome todo List using Flutter'),  // Removed space before 'welcome'
        actions: [
          PopupMenuButton(  // Removed redundant 'icon' property
            icon: Icon(Icons.more_vert),  // Corrected to 'Icons.more_vert' from 'Icon.more_vert'
              itemBuilder: (_)=>[
                PopupMenuItem(child: Text('Afficher tous les taches faites')),
                PopupMenuItem(child: Text(' Afficher tous les tashes')),
              ],
 
          ),
        ],
      ),
      body:  Body(),
      drawer: AppDrawer(),
    );
  }
}
