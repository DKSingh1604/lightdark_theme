import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final Text? text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    this.color,
    this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.all(17),
        child: Center(
          child: text ?? Text("TAP"),
        ),
      ),
    );
  }
}
