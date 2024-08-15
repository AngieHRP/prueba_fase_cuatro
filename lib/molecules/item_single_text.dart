import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/background_item.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TestFase4ItemSingleText extends StatelessWidget {
  /// Texto descriptivo item
  final String title;

  const TestFase4ItemSingleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TestFase4BackgroundItem(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: titleGrayStyle,
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
