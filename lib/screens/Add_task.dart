import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoey_provider/Model/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     String? newTaskTitle;
     return Container(
      color: Color(0xff757575),
      child: Container(

        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
           topRight: Radius.circular(20),
           topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Center(child: Text("Add a Task",style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize:30,
            color: Colors.grey,
            )))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width:1),
                  ),
                  hintText: "Add item",
                ),
                autofocus:true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                 newTaskTitle=newText;
               },
              ),
            ),
            MaterialButton(
                color: Colors.green,
               onPressed: () {
                 Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                   },
               child: Text("Add",style: GoogleFonts.raleway(textStyle: const TextStyle(fontSize: 25,
                   color: Colors.white)),
               ))
          ],
        ),
      ),
    );
  }
}
