import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton(
    this.title,
    this.onPressed, {
    super.key,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            onPressed: onPressed,
            child: Text(
              title,
            )));
  }
}
