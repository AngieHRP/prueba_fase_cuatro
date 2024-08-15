import 'package:flutter/material.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TestFase4Button extends StatelessWidget {
  /// Texto del botón
  final String text;

  /// Devolución de llamada para la acción del botón
  final VoidCallback? onPressed;

  const TestFase4Button({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: TestFase4Colors.buttonColor,
        foregroundColor: TestFase4Colors.buttonColor,
        disabledBackgroundColor: TestFase4Colors.background,
        disabledForegroundColor: TestFase4Colors.buttonColor,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        minimumSize: const Size(double.infinity, 45.0),
        maximumSize: const Size(double.infinity, 45.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TestFase4Sizes.sizeImage),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: buttonTextStyle,
      ),
    );
  }
}
