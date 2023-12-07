
import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';


 class Quiz extends  StatefulWidget {
 const Quiz({Key? key}) : super(key: key);
  

  @override
 State<Quiz> createState() {
    return _QuizState();
  }
 }
class _QuizState extends State<Quiz>
{
 var activeScreen='start-screen';

  void switchScreen()
  {
    setState(() {
      activeScreen= 'question-screen';
    });
  }
  @override
   Widget build(context)
   {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen=='question-screen')
    {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
             colors: [
              Colors.deepPurple,
              Colors.deepPurple
             ],
             begin:Alignment.topLeft,
             end:Alignment.bottomRight,
           ),
           ),
          child:screenWidget,
          ),
      ),
    );
   }
}