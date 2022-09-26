import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  const MyButton(
      {Key? key,
      this.text = '',
      this.color = const Color(0xffa5a5a5),
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:12),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            height: 80,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
