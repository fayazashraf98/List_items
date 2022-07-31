import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
 import 'package:todoey_provider/Model/task_data.dart';
import 'Constint.dart';
import 'Task_Titile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Consumer<TaskData>(
        builder: (context, TaskData, child) {
          return  TaskData.tasks.isNotEmpty? ListView.builder(
            itemCount:TaskData.taskCount,/// ininsted of tasks.length simply we initlize the getter taskCount
            itemBuilder: (context,index){
              final task=TaskData.tasks[index];
              return  listTitle(
                tasktitle:task.name,
                isChecked:task.IsDone,
                CheckboxCallbac:(CheckboxState){
                  TaskData.updateTask(task);
                }, lognPressCallback: () {
                TaskData.deleteLest(task);
              },
              );
            },
          ):Center(child: Text("Add items",style:GoogleFonts.raleway(textStyle:KnotItems)));
        },

      );
  }
}
