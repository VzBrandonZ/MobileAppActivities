import 'package:flutter/material.dart';
import 'package:app_async_await/constants.dart';

class Button extends StatefulWidget {
  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.childAnimated,
    required this.child,
  });
  final String text;
  final TextStyle color;
  final Widget child;
  final Widget childAnimated;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget.child,
              const SizedBox(
                height: 3,
              ),
              widget.childAnimated,
              const SizedBox(
                height: 10,
              ),
              Text(
                "${widget.text}ms",
                style: widget.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
