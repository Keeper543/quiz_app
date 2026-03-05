import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,required this.chooseAnswer});

final List<String> chooseAnswer;


List<Map<String, Object>> summaryData= [];
List<Map<String, Object>> summary = [];
for (var i = 0 ;i<chosenAnswers.length;i++){
  summary.add({
    'question_index':i,
    'questions':questions[i].question,
    'correct_answer': questions[i].answers[0],
    'user_answer': chooseAnswer[i]
  });
  return summary;
}
  @override
  Widget build(context)
  {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('You answered X out of Y questions Correctly'),
            const SizedBox(height:30,),
            const Text('List of Answers and Questions'),
            const SizedBox(height:30,),
            TextButton(
              onPressed: (){},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}