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
}
