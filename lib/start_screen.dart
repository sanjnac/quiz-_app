import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

 final void Function() startQuiz;
  @override
  Widget build(context)
  {
    return  Center(
      child:Column(
       mainAxisAlignment: MainAxisAlignment.center ,
        children:[
        // ignore: unnecessary_string_escapes
        Image.asset('assets/images/quiz-logo.png',
        width:300,
        color:const Color.fromARGB(1, 207, 219, 219),),
        const SizedBox(height:80),
         Text('Learn Flutter the fun way!',
        style:GoogleFonts.lato
        (
          color:Colors.white,
          fontSize: 25,
        ),
        ),
        const SizedBox(height: 30,),
        OutlinedButton.icon(
        onPressed: startQuiz,
        style:OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 78, 62, 62),
        ),
        icon: const Icon(Icons.arrow_right_alt),
        label:const Text('Start Quiz'),
        )
      ],
      ),
    );
  }
}