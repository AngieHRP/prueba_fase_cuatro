import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/templates/list_product.dart';
import 'package:prueba_fase_4/templates/models/product_model.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TestFase4PageListProducts extends StatelessWidget {
  /// Lista de productos datos por el módelo ProductModel
  final List<ProductModel> list;

  /// Título de la página
  final String title;

  const TestFase4PageListProducts({
    super.key,
    required this.list,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TestFase4BodyApp(
        onBack: true,
        onBackPressed: () {
          Navigator.of(context).pop();
        },
        childHeader: const TestFase4HeaderApp(),
        childBody: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: TestFase4Spacing.spacingLarge,
              ),
              Text(
                title,
                style: titleStyle,
              ),
              TestFase4TemplatesListProduct(
                list: list,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
