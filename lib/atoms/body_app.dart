import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';

class TestFase4BodyApp extends StatelessWidget {
  /// Widget encabezado de la página
  final Widget? childHeader;

  /// Widget cuerpo de la página
  final Widget childBody;

  /// Devolución de llamada para la acción 'atrás' de la página
  final VoidCallback? onBackPressed;

  /// Si es true activa la función onBackPressed, si es false desaparace el botón para la acción de 'atrás'
  final bool onBack;

  const TestFase4BodyApp({
    super.key,
    this.childHeader,
    required this.childBody,
    this.onBackPressed,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    double sizeHeightHeader = MediaQuery.of(context).padding.top;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark));
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: sizeHeightHeader),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Visibility(
                        visible: childHeader != null, child: childHeader!),
                    Visibility(
                      visible: onBack,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: TestFase4Spacing.spacingXSmall),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.4)),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: TestFase4Colors.primaryColor,
                            size: TestFase4Sizes.sizeIcon,
                          ),
                          onPressed: onBackPressed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(TestFase4Spacing.spacingLarge),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TestFase4Spacing.spacingLarge),
                        topRight:
                            Radius.circular(TestFase4Spacing.spacingLarge),
                      ),
                      color: TestFase4Colors.backgroundLigth,
                    ),
                    child: childBody),
              )
            ],
          )),
    );
  }
}
