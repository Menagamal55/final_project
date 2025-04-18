import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  final IconData icon;

  const CustomIconContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8), 
        boxShadow: [
          BoxShadow(color: const Color.fromARGB(255, 186, 50, 50), blurRadius: 4),
        ],
      ),
      child: Center(
        child: Icon(
          icon,
          size: 24, 
          color: Colors.black,
        ),
      ),
    );
  }
}
