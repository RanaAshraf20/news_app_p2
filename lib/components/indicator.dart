import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    this.color = Colors.grey,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(color: color);
  }
}
