import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({super.key,
  required this.result,
  required this.questionLength,
  required this.onPressed
  });

  final int result;
  final int questionLength;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Final Score', 
              style: TextStyle(color: neutral, fontSize: 20.0 ),
            ),
            const SizedBox(height: 20.0,),
            CircleAvatar(
              child: Text('$result/$questionLength',
              style: TextStyle(fontSize: 30.00,),
              ),
              radius : 60.0,
              backgroundColor: result == questionLength 
              ? correct : result < questionLength/2 
              ? incorrect : result == questionLength/2 
              ? Colors.yellow : Colors.blue,
            ),
            const SizedBox(height: 10.0),
            Text(result == questionLength 
              ? 'Felicitaciones!!!' : result < questionLength/2 
              ? 'Try Again!' : result == questionLength/2 
              ?'Half' : 'OMG!',
              style: const TextStyle(color: neutral,fontSize: 15.0),
              ),
              const SizedBox(height: 25.0),
              GestureDetector(
                onTap: onPressed,
                child: const Text('Start Over', style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                  ),
                ),
              )
          ],
        ),
        ),
    );
  }
}