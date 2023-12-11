import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);

  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      contentPadding: const EdgeInsets.all(24.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Result',
            style: TextStyle(color: neutral, fontSize: 22.0),
          ),
          const SizedBox(height: 20.0),
          CircleAvatar(
            backgroundColor: result == questionLength / 2
                ? Colors.yellow
                : result < questionLength / 2
                    ? incorrect
                    : correct,
            radius: 70.0,
            child: Text(
              '$result/$questionLength',
              style: const TextStyle(fontSize: 30.0),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            result == questionLength / 2
                ? 'Almost There'
                : result < questionLength / 2
                    ? 'Try Again'
                    : 'Great',
            style: const TextStyle(color: neutral),
          ),
          const SizedBox(height: 25.0),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Start Over',
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
