import 'package:flutter/material.dart';
import 'package:flutter_application_1/screenrs/Home.dart';
import 'package:provider/provider.dart';
import './providers/task_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_)=>TaskProvider(),
    child: MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add to List App',
      home: Home()  ,
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner:false 
    );
  }
}
