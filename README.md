# Prueba Fase Cuatro


Paquete de Flutter que contiene un sistema de diseño basado en Atomic Design para cargar imágenes, textos, lista de strings y lista de productos customizados.


## Tabla de contenido

  - [Instalación](#installation)
  - [Uso](#usage)
  - [Documentación](#documentation)

## Instalación


### 1. Dependencia

Añade esto al archivo de tu paquete 'pubspec.yaml':

```python
   prueba_fase_4:
     git:
       url: https://github.com/AngieHRP/prueba_fase_cuatro
       ref: main
```

### 2. Instalarlo
Ejecuta el siguiente comando en la línea de comandos:

con pub: 
```python
   $ pub get
```

con Flutter:
```python
   $ flutter packages get
```


## Uso

### 1. Importarlo
Ahora en tu código Dart, puedes usar:

```python
  import 'package:prueba_fase_4/prueba_fase_4.dart';
```

## Documentación


### Atoms


Los widgets disponibles son los siguientes


1. TestFase4AssetImage

Widget para cargar imágenes desde assets

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| path                                  | String             | Url de la imagen en assets                                                                              |       
| width                                 | double             | Ancho de la imagen                                                                                      |      
| height                                | double             | Alto de la imagen                                                                                       | 


2. TestFase4BackgroundItem

Widget fondo de un item de una lista

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| child                                 | Widget             |  Widget del item                                                                                        |       


3. TestFase4BodyApp

Widget fondo para todas las páginas de la aplicación

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| childHeader                           | Widget             |  Widget encabezado de la página                                                                         |       
| childBody                             | Widget             |  Widget cuerpo de la página                                                                             |       
| onBackPressed                         | VoidCallback       |  Devolución de llamada para la acción 'atrás' de la página                                              |       
| onBack                                | bool               |  Si es true activa la función onBackPressed, si es false desaparace el botón para la acción de 'atrás'  |       


4. TestFase4Button

Widget botón customizado

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| text                                  | String             |  Texto del botón                                                                                        |       
| onPressed                             | VoidCallback       |  Devolución de llamada para la acción del botón                                                         |                                                   

### Molecules


1. TestFase4HeaderApp

Widget encabezado customizado


2. TestFase4ItemSingleText


| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| title                                 | String             | Texto descriptivo item                                                                                  |       


3. TestFase4NetworkImage

Widget para cargar imágenes desde la red

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| path                                  | String             | Url de la imagen                                                                                        |       
| width                                 | double             | Ancho de la imagen                                                                                      |      
| height                                | double             | Alto de la imagen                                                                                       | 


### Organisms


1. TestFase4ItemProduct
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| path                                  | String             | Url de la imagen del item                                                                               |       
| title                                 | String             | Texto Descriptivo item                                                                                  |      
| price                                 | double             | Precio del item                                                                                         | 


2. TestFase4ListSingleText
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| list                                  | List<String>       | Lista de String                                                                                        |       


### Pages


1. TestFase4PageListProducts
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| list                                  | List<ProductModel> | Lista de productos datos por el módelo ProductModel                                                     |       
| title                                 | String             | Título de la página                                                                                     |      


2. TestFase4PageListText
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| list                                  | List<String>       | Lista de String                                                                                         |       
| title                                 | String             | Título de la página                                                                                     |      


### Templates


1. TestFase4TemplatesListProduct
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| list                                  | List<ProductModel> | Lista de productos datos por el módelo ProductModel                                                     |       


2. TestFase4TemplateListText
 

| Parámetro                             | Tipo               | Descripción                                                                                             |
| :------------------------------------ | :----------------- | :------------------------------------------------------------------------------------------------------ | 
| list                                  | List<String>       | Lista de String                                                                                         |       
| title                                 | String             | Título de la página                                                                                     |      


### Tokens

Aquí se encuentran definidos los elementos básicos colors, sizes, spacing, text_styles, typography.


Ejemplo
```python
  
TextStyle titleStyle = TextStyle(
  fontFamily: TestFase4Typography.familySatoshi,
  fontSize: TestFase4Sizes.sizeLarge,
  fontWeight: FontWeight.w700,
  color: TestFase4Colors.primaryColor,
);

TextStyle textStyle = TextStyle(
  fontFamily: TestFase4Typography.familySatoshi,
  fontSize: TestFase4Sizes.sizeMedium,
  fontWeight: FontWeight.w500,
  color: TestFase4Colors.textGrayColor,
);
```

### Modelo de datos


ProductModel

  | Parámetro                            | Tipo               | Descripción                                                                                             |
  | :------------------------------------| :----------------- | :------------------------------------------------------------------------------------------------------ | 
  | id                                   | int                | Id de identificación del producto                                                                       |       
  | title                                | String             | Título del producto                                                                                     | 
  | price                                | double             | Precio del producto                                                                                     |
  | description                          | String             | Descripción del producto                                                                                |
  | category                             | String             | Categoría a la cual corresponde el producto                                                             |
  | image                                | String             | Url de la imagen correspondiente al producto                                                            |
  | rating                               | RatingModel        | Modelo de calificación del producto                                                                     |

RatingModel

  | Parámetro                            | Tipo               | Descripción                                                                                             |
  | :------------------------------------| :----------------- | :------------------------------------------------------------------------------------------------------ | 
  | ratecount                            | double             | Calificación del producto                                                                               |       
  | errorMsg                             | int                | Cantidad de calificaciones del producto                                                                 | 
