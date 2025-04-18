import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final List<String> imagePaths; 
  const CustomImageContainer({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: imagePaths.map((imagePath) {
        return Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6,
                offset: const Offset(3, 3),
              ),
            ],
            border: Border.all(color: const Color.fromARGB(255, 144, 8, 8), width: 2),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(), 
    );
  }
}
