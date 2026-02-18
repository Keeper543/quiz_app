import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(
    {
      required this.answerText,
      required this.onTap, 
      super.key
    }
  );
   
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context){
    return 
    ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 45,
        ),
        backgroundColor: const Color.fromARGB(255, 27, 1, 78)
      ,foregroundColor: Colors.white),
      child: Text(answerText),
    );
  }
}