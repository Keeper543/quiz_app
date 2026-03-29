import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionSummary extends StatelessWidget {
  const QuestionSummary ({super.key, required this.summaryData});
   
  final List<Map<String, Object>> summaryData;

  
  @override
  Widget build(context){
    return Column(
      children: summaryData.map(
        (data){
          return Row(
            children:[
              Container(
    width: 50.0,
    height: 48.0,
    decoration: BoxDecoration(
      color: Colors.blue, 
      shape: BoxShape.circle, 
      ),
    child: Center(
      child: Text(
      style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      
        
        ((data['question_index'] as int) +1).toString()),
      ),
    ),
              Expanded(
                child: Column(
                  children:[
                    Text(data['question'] as String,
                    style: GoogleFonts.acme(
                      color: Colors.white,
                      fontSize: 15,)),
                    const SizedBox(height:5,),
                    Text(data['user_answer'] as String,
                    style: GoogleFonts.acme(
                      color: const Color.fromARGB(255, 238, 153, 25),
                      fontSize: 15,)),
                    Text(data['correct_answer'] as String,
                    style: GoogleFonts.acme(
                      color: const Color.fromARGB(255, 34, 218, 231),
                      fontSize: 15,)),
                  ],
                ),
              )
            ],
          );
        }
      ).toList(),
    );
  }
}