import 'package:flutter/material.dart';
import 'package:task5/provider/drawer_provider.dart';
import 'package:task5/provider/task_provider.dart';
import 'package:task5/view/screens/first_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: First_Screen(),
      ),
    );
    /*return MultiProvider(
        providers: [
          Provider<DrawerProvider>(create: (context) => DrawerProvider()),
          Provider<TaskProvider>(create: (context) => TaskProvider()),
        ],
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home: First_Screen(),
        themeMode : Provider.of<DrawerProvider>(context).t,
      ),
    );*/
  }
}
