import 'package:calculator_app/widgets/my_button.dart';
import 'package:flutter/material.dart';

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
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          MyButton(
                            text: 'AC',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '+/-',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '%',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '/',
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            text: '7',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '8',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '0',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: 'x',
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            text: '4',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '5',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '6',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '-',
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            text: '1',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '2',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '3',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '+',
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            text: '0',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '.',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: 'DEL',
                            onPressed: () {},
                          ),
                          MyButton(
                            text: '=',
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
