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

### 3. Importarlo
Ahora en tu código Dart, puedes usar:

```python
  import 'package:prueba_fase_4/prueba_fase_4.dart';
```


## Uso
FALTA

## Documentación
FALTA

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
