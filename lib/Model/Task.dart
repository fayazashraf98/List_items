class Task{
  final String name;
  bool IsDone=false;
  Task({ required this.name, required this.IsDone});

 void toggleDone(){
  IsDone=!IsDone;
 }
}