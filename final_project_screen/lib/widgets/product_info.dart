
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String textInfo;
  final IconData icon;
  final String iconText; 

  const ProductInfo({
    super.key,
    required this.textInfo,
    required this.icon,
    required this.iconText, 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textInfo, 
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.amber, size: 18), 
              const SizedBox(width: 4),
              Text(
                iconText, 
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
