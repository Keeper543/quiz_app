
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(225, 63, 8, 165),Color.fromARGB(225, 12, 1, 36)
          ],
          begin: Alignment.topRight,
          end:  Alignment.bottomLeft

          )
      ),
      child: Center(child: Text("hello"),),
    );

    }
  }