import '';
import 'escritor.dart';
enum Genero{
  Romance,Fantasia,Horror
}

class Libro{
  String titulo;
  Autor autor;
  Genero genero;

  Libro(
    {required this.titulo,required this.genero,required this.autor}
  );

  @override
  String toString() {
    return {
      'titulo':titulo,
      'genero':genero,
      'autor':autor.toString()
    }.toString();
  }
}