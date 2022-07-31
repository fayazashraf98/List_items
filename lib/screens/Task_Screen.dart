import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoey_provider/Model/task_data.dart';
import '../Widgets/Constint.dart';
import 'Add_task.dart';
import '../Widgets/Task_List.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) =>SingleChildScrollView(
              child:Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTask()
              )));
        }, child: const Icon(Icons.add, size: 40,),),
      backgroundColor: Colors.black54,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 30, top: 60, right: 30, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Today", style:GoogleFonts.openSans(textStyle: KmainTextHeading) ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${Provider.of<TaskData>(context).taskCount} Tasks Added",
                        style:GoogleFonts.openSans(textStyle: KTaskAddHeading)  )
                        ],
                  ),
                ]),
          ),
          Expanded(
            child:  Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
              ),
             // child:TaskList(),
              child: TaskList()

          )
          )],
      ),
    );
  }
}


