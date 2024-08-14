import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/background_item.dart';
import 'package:prueba_fase_4/molecules/network_images.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TestFase4ItemProduct extends StatelessWidget {
  final String path;
  final String title;
  final double price;

  const TestFase4ItemProduct({
    super.key,
    required this.path,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return TestFase4BackgroundItem(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.1),
                  blurRadius: TestFase4Spacing.spacingSmall,
                ),
              ],
              borderRadius: BorderRadius.all(
                  Radius.circular(TestFase4Spacing.spacingMedium)),
            ),
            child: TestFase4NetworkImage(
              path: path,
              width: TestFase4Sizes.sizeImage,
              height: TestFase4Sizes.sizeImage,
            ),
          ),
          SizedBox(
            width: TestFase4Spacing.spacingMedium,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textStyle,
                ),
                SizedBox(
                  height: TestFase4Spacing.spacingXSmall,
                ),
                Text(
                  '\$$price',
                  style: titleStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: TestFase4Spacing.spacingSmall,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: TestFase4Colors.primaryColor,
            size: TestFase4Spacing.spacingMedium,
          ),
        ],
      ),
    );
  }
}
