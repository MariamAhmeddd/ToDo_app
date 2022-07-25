
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/provider/task_provider.dart';

class AddTask_Screen extends StatelessWidget {
  const AddTask_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context);
    String newTask="";
    return Column(
      children: [
        Text(
          "Add New Task.."
        ),
        SizedBox(height: 20,),
        TextFormField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (Textt) {
            newTask = Textt;
          },
        ),
        ElevatedButton(
            onPressed:(){
              provider.AddTask(newTask);
              Navigator.pop(context);
            },
            child: Text("ADD"),
        ),
      ],
    );
  }
}
