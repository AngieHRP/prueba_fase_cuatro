# Prueba Fase Cuatro


Paquete para el consumo de la API FakeStore usando Dart. Se proporcionan los siguientes tres servicios corresponden a obtener todas las categorías, los productos de una categoría y el detalle de un producto.


## Tabla de contenido

  - [Instalación](#installation)
  - [Uso](#usage)
  - [Documentación](#documentation)

## Instalación


### 1. Dependencia

Añade esto al archivo de tu paquete 'pubspec.yaml':

```python
   prueba_fase_tres:
     git:
       url: https://github.com/AngieHRP/prueba_fase_tres
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

### 3. Importarlo
Ahora en tu código Dart, puedes usar:

```python
  import 'package:prueba_fase_tres/prueba_fase_tres.dart';
```


## Uso


1. Crear una instancia de la clase PruebaFaseTres

```python
   final PruebaFaseTres pruebaFaseTres = PruebaFaseTres();  
```
2. A continuación se muestra un ejemplo de como acceder a cada una de las APIs de la librería

 ```python
   Future<void> _getAllCategories() async {
    setState(() {
      listCategories.clear();
      listProducts.clear();
      product = ProductModel.empty();
    });
    final response = await pruebaFaseTres.getAllCategories();
    response.fold((failure) {}, (response) {
      setState(() {
        listCategories.addAll(response);
      });
    });
  }
```  


## Documentación

Este paquete cuenta con los siguientes métodos para consumir

1. Obtener todas las categorías
```python
  Future<Either<GenericError, List<String>>> getAllCategories() async {
    final result = await api_source_use_case.getAllCategories('categories');
    return result;
  }
```

2. Obtener los productos según una categoría
   
```python
  Future<Either<GenericError, List<ProductModel>>> getProductsByCategory(
      String category) async {
    final result = await api_source_use_case.getProductsByCategory(category);
    return result;
  }
```

3. Obtener el detalle de un producto
```python
  Future<Either<GenericError, ProductModel>> getDetailProduct(
      String idProduct) async {
    final result = await api_source_use_case.getDetailProduct(idProduct);
    return result;
  }
```

| Parámetro                             | Tipo            | Descripción                                                                                             |
| :------------------------------------ | :-------------- | :------------------------------------------------------------------------------------------------------ | 
| category                              | String          | Corresponde al nombre de la categoría que se va a consultar para el método getProductsByCategory        |       
| idProduct                             | String          | Corresponde a la variable 'id' del producto del modelo ProductModel para el método  getDetailProduct    |      


# Modelo de datos


ProductModel

  | Parámetro                            | Tipo            | Descripción                                                                                             |
  | :------------------------------------| :-------------- | :------------------------------------------------------------------------------------------------------ | 
  | id                                   | int             | Id de identificación del producto                                                                       |       
  | title                                | String          | Título del producto                                                                                     | 
  | price                                | double          | Precio del producto                                                                                     |
  | description                          | String          | Descripción del producto                                                                                |
  | category                             | String          | Categoría a la cual corresponde el producto                                                             |
  | image                                | String          | Url de la imagen correspondiente al producto                                                            |
  | rating                               | RatingModel     | Modelo de calificación del producto                                                                     |

RatingModel

  | Parámetro                            | Tipo            | Descripción                                                                                             |
  | :------------------------------------| :-------------- | :------------------------------------------------------------------------------------------------------ | 
  | ratecount                            | double          | Calificación del producto                                                                               |       
  | errorMsg                             | int             | Cantidad de calificaciones del producto                                                                 | 
