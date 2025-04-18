import 'package:flutter/material.dart';
import 'package:final_project_screen/widgets/custom_icons.dart';


class ProductDetail extends StatelessWidget {
  final IconData icon;
  final String textDetail;

  const ProductDetail({super.key, required this.textDetail, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconContainer(icon: icon),
        const SizedBox(width: 8),
        Text(
          textDetail, 
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
        ),
      ],
    );
  }
}
