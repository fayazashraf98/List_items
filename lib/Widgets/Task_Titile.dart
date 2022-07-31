import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constint.dart';

class listTitle extends StatelessWidget {

  final bool isChecked ;
  final String tasktitle;
  final Function(bool?)  CheckboxCallbac;
  final Function()  lognPressCallback;
  listTitle({required this.isChecked,required this.tasktitle, required this.CheckboxCallbac, required this.lognPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: lognPressCallback,
      title: Text(tasktitle, style: GoogleFonts.raleway(textStyle:KTaskAdd,
          decoration: isChecked ? TextDecoration.lineThrough : null,color: Colors.grey[300],
          decorationColor: Colors.white,decorationThickness: 2.85, )),
      trailing:
    Container(
    decoration: BoxDecoration(
    border: Border.all(width: 3,color:Colors.white)
    ),
      width: 25,height: 25,
    child:  Checkbox(
      activeColor:Colors.white,
      checkColor: Colors.black,
        value: isChecked,
        onChanged:CheckboxCallbac,
         // onChanged: ToggleCheckbox
      ),
    ));
  }
}



