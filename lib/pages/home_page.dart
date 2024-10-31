import 'package:flutter/material.dart';
import 'package:lightdark_theme/components/box.dart';
import 'package:lightdark_theme/components/button.dart';
import 'package:lightdark_theme/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //want to change button text whern theme changes
    String buttonText =
        Provider.of<ThemeProvider>(context).themeData.brightness ==
                Brightness.light
            ? "Why so light?" "Tap here!!"
            : "Why so dark? " "Tap here!!";

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
          child: MyBox(
        color: Theme.of(context).colorScheme.secondary,
        child: MyButton(
          color: Theme.of(context).colorScheme.primary,
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
          text: Text(buttonText),
        ),
      )),
    );
  }
}
