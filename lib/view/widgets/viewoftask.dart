import 'package:flutter/material.dart';
import 'package:task5/model/task.dart';

class ViewOfTask extends StatelessWidget {
  final String title;
  final bool done;
  final Function () delete;
  final Function (bool?)? update;
  const ViewOfTask(
      {
        Key? key,
        required this.title,
        required this.done,
        required this.delete,
        required this.update
      }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(
        title,
        style: TextStyle(decoration: done ? TextDecoration.lineThrough : null),
      ),
      trailing: SizedBox(
        width: 150,
        child:  Row(
          children: [

            IconButton(
              onPressed: (){
                delete();
              },
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
      leading: Checkbox(
        value: done,
        onChanged: update,
        activeColor: Colors.teal,
        shape: CircleBorder(),
        side: BorderSide(
          color: Colors.blue,
          width: 1.5,
        ),
      ),
    );
  }
}
