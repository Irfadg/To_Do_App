class task{
   final String title;
  bool isDone;
  task({required this.title, this.isDone=false});
  void toggleDone(){
    isDone=!isDone;
  }



}