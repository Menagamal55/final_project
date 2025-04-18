import 'package:flutter/material.dart';

class BuildColors extends StatelessWidget {
  const BuildColors({super.key});

  static final List<Color> colors = [Colors.grey, Colors.green,  Colors.blue];

  Widget _buildColorCircle(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: CircleAvatar(radius: 16, backgroundColor: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) => _buildColorCircle(color)).toList(),
    );
  }
}