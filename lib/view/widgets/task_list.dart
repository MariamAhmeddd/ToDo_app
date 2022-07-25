import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:task5/provider/task_provider.dart';
import 'package:task5/view/widgets/viewoftask.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (context,taskProv,child){
          return ListView.builder(
            itemCount: taskProv.tasks.length,
            itemBuilder: (context,index){
              final task = taskProv.tasks[index];
              return ViewOfTask(
                  title: task.name,
                  done: task.done,
                  delete: ()
                  {
                    taskProv.DeleteTask(task);
                  },
                  update: (checkboxState)
                  {
                    taskProv.UpdateTask(task);
                  }
              );
            },
          );
        }
    );
  }
}
