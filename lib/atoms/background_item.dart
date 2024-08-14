import 'package:flutter/material.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';

class TestFase4BackgroundItem extends StatelessWidget {
  final Widget child;

  const TestFase4BackgroundItem({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: TestFase4Spacing.spacingMedium),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(TestFase4Spacing.spacingMedium),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: TestFase4Colors.backgroundHeader,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: TestFase4Colors.background,
            blurRadius: 3,
          )
        ],
      ),
      child: child,
    );
  }
}
