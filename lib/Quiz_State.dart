

/*class _QuizState extends State<Quiz>{
  
  Widget? activeScreen;
  void switchScreen(){
    activeScreen = QuestionsScreen();
  }
}

void initState(){
  activeScreen = StartScreen(switchScreen());
  super.initState();
}
@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 63, 8, 165),
              Color.fromARGB(255, 13, 1, 38)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
        ),
        child: activeScreen,
      ),
    ), 
    );
}*/
