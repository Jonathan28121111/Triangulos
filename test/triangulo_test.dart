import 'package:triangulo/triangulo.dart';
import 'package:test/test.dart';

void main() {
  print('Ejecutando tests del Clasificador de Triangulos\n');
  
  int pasados = 0;
  int total = 0;
  
  total++;
  if (test('Triangulo equilatero (3,3,3)', () {
    var t = Triangulo(3, 3, 3);
    return t.clasificar() == TipoTriangulo.equilatero;
  })) pasados++;

   total++;
  if (test('Triangulo isosceles (3,3,4)', () {
    var t = Triangulo(3, 3, 4);
    return t.clasificar() == TipoTriangulo.isosceles;
  })) pasados++;

    total++;
  if (test('Triangulo escaleno (3,4,5)', () {
    var t = Triangulo(3, 4, 5);
    return t.clasificar() == TipoTriangulo.escaleno;
  })) pasados++;

  total++;
  if (testException('No es triangulo (1,2,10)', () {
    Triangulo(1, 2, 10);
  })) pasados++;
  
  total++;
  if (testException('Lado cero (0,5,5)', () {
    Triangulo(0, 5, 5);
  })) pasados++;
  
  total++;
  if (testException('Lado negativo (-1,5,5)', () {
    Triangulo(-1, 5, 5);
  })) pasados++;
  
  print('\nRESUMEN:');
  print('Tests pasados: $pasados/$total');
  print('Tests fallados: ${total - pasados}');
}






