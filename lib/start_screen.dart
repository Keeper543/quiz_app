
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(225, 63, 8, 165),Color.fromARGB(225, 12, 1, 36)
          ],
          begin: Alignment.topRight,
          end:  Alignment.bottomLeft

          )
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            Image.asset(
              'assets/images/assets/images/quiz-logo.png',
              width: 280,
              ),
              const SizedBox(
                height: 80,
              ),

            Text("Challenge yourself" ,
            style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: (){}, 
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white
                ),
                child: Text("start Quiz")
                )
          ],
        )
        ),
    );

    }
  }