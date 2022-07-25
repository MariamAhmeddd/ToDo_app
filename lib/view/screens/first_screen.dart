import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/model/line.dart';
import 'package:task5/provider/drawer_provider.dart';
import 'package:task5/view/screens/drawer_screen.dart';
import 'package:task5/view/widgets/catagoriesView.dart';
import 'package:task5/view/widgets/task_list.dart';

import 'adding_screen.dart';

class First_Screen extends StatelessWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: DrawerScreen(),
        backgroundColor: Colors.black87,
        appBar: AppBar(
          actions: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.view_headline)),
            SizedBox(width :250),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          ],
          //Color.fromRGBO(0, 0, 400, 100)
          backgroundColor: Colors.black87,
        ),
        //backgroundColor: Colors.black87,
        body: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      //padding: EdgeInsets.only(top: 10,bottom: 30,right: 84,left: 20),
                      child :Text(
                        //I Will Keep Moving Forward,Until I Destroy My Enemies...
                        "What's Up,",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      //padding: EdgeInsets.only(top: 10,bottom: 30,right: 84,left: 20),
                      child :Text(
                        //I Will Keep Moving Forward,Until I Destroy My Enemies...
                        "Mariam..",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.blue[400],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Expanded(
                    child: CatagoriesView(),
                ),
                //SizedBox(height: 50,),

                Expanded(
                  child: Container(
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                     child:  TaskList(),
                  ),
                ),
              ],
            ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
            child: Icon(Icons.add,color: Colors.blue,size: 50,),
            onPressed: ()
            {
              //addTaskScreen
              showDialog(
                  context: context,
                  builder: (context) =>  AlertDialog(
                    content: AddTask_Screen(),)
              );
            },
        ),
      );
  }
}
