import 'package:flutter/material.dart';
import 'package:prueba_fase_4/organisms/item_product.dart';
import 'package:prueba_fase_4/templates/models/product_model.dart';

class TestFase4TemplatesListProduct extends StatelessWidget {
  final List<ProductModel> list;

  const TestFase4TemplatesListProduct({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        itemBuilder: (_, index) {
          return TestFase4ItemProduct(
            path: list[index].image,
            title: list[index].title,
            price: list[index].price,
          );
        });
  }
}
