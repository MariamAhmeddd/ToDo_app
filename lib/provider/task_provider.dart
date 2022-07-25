import 'package:flutter/cupertino.dart';
import 'package:task5/model/Task.dart';
import 'package:flutter/foundation.dart';
class TaskProvider extends ChangeNotifier {
   List <Task> tasks = [
    Task(name: 'fix drawer provider'),
    Task(name: 'cry because i can\'t fix it'),
  ];

  //add new task to the list
  void AddTask(String taskN)
  {
    final task = Task(name:taskN);
    tasks.add(task);
    notifyListeners();
  }

 //delete task from the list
  void DeleteTask(Task task)
  {
    tasks.remove(task);
    notifyListeners();
  }

 //update task in the list
 void UpdateTask(Task task)
 {
   task.done = !(task.done);
   notifyListeners();
 }
}