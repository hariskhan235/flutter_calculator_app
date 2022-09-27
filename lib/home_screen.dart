import 'package:calculator_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        MyButton(
                          text: 'AC',
                          onPressed: () {
                            setState(
                              () {
                                userInput = '';
                                answer = '';
                              },
                            );
                          },
                        ),
                        MyButton(
                          text: '+/-',
                          onPressed: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '%',
                          onPressed: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '/',
                          color: Colors.orange,
                          onPressed: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          text: '7',
                          onPressed: () {
                            setState(() {
                              userInput += '7';
                            });
                          },
                        ),
                        MyButton(
                          text: '8',
                          onPressed: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                        ),
                        MyButton(
                          text: '0',
                          onPressed: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                        ),
                        MyButton(
                          text: 'x',
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          text: '4',
                          onPressed: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '5',
                          onPressed: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '6',
                          onPressed: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '-',
                          color: Colors.orange,
                          onPressed: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          text: '1',
                          onPressed: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '2',
                          onPressed: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '3',
                          onPressed: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '+',
                          color: Colors.orange,
                          onPressed: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          text: '0',
                          onPressed: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '.',
                          onPressed: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: 'DEL',
                          onPressed: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          text: '=',
                          color: Colors.orange,
                          onPressed: () {
                            calculate();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculate() {
    String finalInput = userInput;
    finalInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalInput);
    ContextModel contextModel = ContextModel();

    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);

    answer = evaluate.toString();
  }
}
