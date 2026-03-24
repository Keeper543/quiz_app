import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/data/question.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,required this.choosenAnswer});

final List<String> choosenAnswer;
List<Map<String, Object>>getSummaryData(){

List<Map<String, Object>> summary = [];

  for(var i = 0 ; i< choosenAnswer.length;i++){
    summary.add({
    'question_index':i,
    'questions':questions[i].question,
    'correct_answer': questions[i].answers[0],
    'user_answer': choosenAnswer[i]
  });
  }
  return summary;
  }

  @override 
  Widget build(context){
  final summaryData = getSummaryData();
  final numTotalQuestions = getSummaryData().length;
  final numTotalCorrect = summaryData.where((data){
    return data['correct_answer'] == data['user_answer'];
  }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Text('You answered $numTotalCorrect out of $numTotalQuestions questions Correctly'),
            const SizedBox(height:30,),
            QuestionSummary(summaryData: summaryData),
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