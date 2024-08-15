import 'package:example/page/atoms.dart';
import 'package:example/page/molecules.dart';
import 'package:example/page/organism.dart';
import 'package:example/page/pages.dart';
import 'package:example/page/templates/templates.dart';
import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/atoms/button.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba cuatro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PruebaCuatroPage(),
    );
  }
}

class PruebaCuatroPage extends StatefulWidget {
  const PruebaCuatroPage({super.key});

  @override
  State<PruebaCuatroPage> createState() => _PruebaCuatroState();
}

class _PruebaCuatroState extends State<PruebaCuatroPage> {
  @override
  Widget build(BuildContext context) {
    return TestFase4BodyApp(
      childHeader: const TestFase4HeaderApp(),
      onBack: false,
      childBody: SingleChildScrollView(
        child: Column(
          children: [
            TestFase4Button(
              text: 'Átomos',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AtomsPage()));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Moléculas',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MoleculesPage()));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Organismos',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrganismsPage()));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Plantillas',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TemplatesPage()));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Páginas',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PagesPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
