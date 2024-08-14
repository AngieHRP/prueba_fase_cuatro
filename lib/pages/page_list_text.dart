import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/templates/template_list_text.dart';

class TestFase4PageListText extends StatelessWidget {
  final List<String> list;
  final String title;

  const TestFase4PageListText({
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
        marginBody: true,
        onBackPressed: () {
          Navigator.of(context).pop();
        },
        childHeader: const TestFase4HeaderApp(),
        childBody: TestFase4TemplateListText(
          list: list,
          title: title,
        ),
      ),
    );
  }
}
