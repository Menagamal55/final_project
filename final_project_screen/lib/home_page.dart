import 'package:flutter/material.dart';
import 'package:final_project_screen/widgets/custom_icons.dart';
import 'package:final_project_screen/widgets/custom_image.dart';
import 'package:final_project_screen/widgets/colors_screen.dart';
import 'package:final_project_screen/widgets/fav_icon.dart';
import 'package:final_project_screen/widgets/price_button.dart';
import 'package:final_project_screen/widgets/product_info.dart';
import 'package:final_project_screen/widgets/product_details.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> myImages = [
      "images/Image_3.jpg",
      "images/Image_6.jpg",
      "images/image_1.jpg",
      "images/Image_4.jpg"
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 142, 237),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11), 
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: CustomIconContainer(icon: Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(height: 10),
             
                    CustomImageContainer(imagePaths: myImages),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/Image_4.jpg",
                        width: double.infinity,
                        height: 450,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FavoriteIconCustom(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductInfo(
                  textInfo: "Sony WH-1000XM4",
                  icon: Icons.star,
                  iconText: "4.9",
                ),
                const SizedBox(height: 10),
                const Text(
                  "Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductDetail(textDetail: "Product Specifications", icon: Icons.list),
                    const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 7),
                const Divider(color: Colors.grey, thickness: 1, indent: 40, endIndent: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductDetail(textDetail: "Colors", icon: Icons.color_lens),
                    const BuildColors(),
                  ],
                ),
                const SizedBox(height: 5),
                PriceAndButton(priceText: r"$349.99"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
