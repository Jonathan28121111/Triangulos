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
  
  Triangulo(this.lado1, this.lado2, this.lado3) {
    _validar();
  }
  
  void _validar() {
    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      throw TrianguloException('Los lados deben ser mayores que cero');
    }
    
    if (lado1 + lado2 <= lado3 || 
        lado1 + lado3 <= lado2 || 
        lado2 + lado3 <= lado1) {
      throw TrianguloException('No cumple la desigualdad triangular');
    }

  }