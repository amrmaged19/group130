import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmiResult});

  final double bmiResult;

  String getResultText() {
    if (bmiResult >= 25) {
      return 'Overweight';
    } else if (bmiResult > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmiResult >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmiResult > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              getResultText(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: getResultText() == 'Normal' ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              bmiResult.toStringAsFixed(1),
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              getInterpretation(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // للرجوع إلى الشاشة السابقة
              },
              child: const Text('Re-Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}