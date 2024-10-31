import 'package:flutter/material.dart';
import 'package:lightdark_theme/components/box.dart';
import 'package:lightdark_theme/components/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
          child: MyBox(
        color: Theme.of(context).colorScheme.secondary,
        child: MyButton(
          color: Theme.of(context).colorScheme.primary,
          onTap: () {},
        ),
      )),
    );
  }
}
