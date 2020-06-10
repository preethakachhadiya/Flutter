import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  // MyAppState createState() => MyAppState();
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'White', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Dog', 'Cat', 'Rabbit', 'Hamster'],
      },
      {
        'questionText': 'What\'s your favourite Hobby?',
        'answers': ['Music', 'Dancing', 'Painting', 'Sports'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Text(questions[_questionIndex]),
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 1'),
            //   onPressed: _answerQuestion,
            // ),
            // RaisedButton(
            //   child: Text('Answer 2'),
            //   onPressed: () => print('Answer 2 chosen!'),
            // ),
            // RaisedButton(
            //   child: Text('Answer 3'),
            //   onPressed: () {
            //     print('answer 3 chosen!');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
