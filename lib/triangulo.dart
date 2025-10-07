enum TipoTriangulo {
  equilatero,
  isosceles,
  escaleno,
}

class TrianguloException implements Exception {
  final String mensaje;
  TrianguloException(this.mensaje);
  
  @override
  String toString() => 'TrianguloException: $mensaje';
}

class Triangulo {
  final int lado1;
  final int lado2;
  final int lado3;
  

  }