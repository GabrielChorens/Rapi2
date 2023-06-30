import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}