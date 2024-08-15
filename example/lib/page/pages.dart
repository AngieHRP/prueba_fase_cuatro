import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/atoms/button.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/pages/page_list_product.dart';
import 'package:prueba_fase_4/pages/page_list_text.dart';
import 'package:prueba_fase_4/templates/models/product_model.dart';
import 'package:prueba_fase_4/templates/models/rating_model.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class PagesPage extends StatefulWidget {
  const PagesPage({super.key});

  @override
  State<PagesPage> createState() => _PagesState();
}

class _PagesState extends State<PagesPage> {
  List<ProductModel> listProducts = [];
  List<String> list = ['Electrodoméstricos', 'Mercado', 'Aseo', 'Hogar'];

  @override
  void initState() {
    super.initState();
    ProductModel product1 = ProductModel(
        id: 0,
        title: 'Cuadro imagen uno',
        price: 120.0,
        description: 'Cuadro imagen uno',
        category: 'Hogar',
        image: 'https://i.imgur.com/tGbaZCY.jpg',
        rating: RatingModel(rate: 3.5, count: 10));
    ProductModel product2 = ProductModel(
        id: 0,
        title: 'Televisor',
        price: 1250.0,
        description: 'Televisor LED',
        category: 'Hogar',
        image: 'https://i.imgur.com/tGbaZCY.jpg',
        rating: RatingModel(rate: 3.5, count: 10));
    listProducts.add(product1);
    listProducts.add(product2);
  }

  @override
  Widget build(BuildContext context) {
    return TestFase4BodyApp(
      childHeader: const TestFase4HeaderApp(),
      onBack: true,
      onBackPressed: () {
        Navigator.of(context).pop();
      },
      childBody: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Páginas',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Página lista de productos',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TestFase4PageListProducts(
                          list: listProducts,
                          title: 'Productos',
                        )));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Página lista de texto',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TestFase4PageListText(
                          list: list,
                          title: 'Categorías',
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
