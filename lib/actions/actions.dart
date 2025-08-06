import 'package:flutter/material.dart';

Future wait(BuildContext context) async {
  await Future.delayed(
    Duration(
      milliseconds: 120,
    ),
  );
}
