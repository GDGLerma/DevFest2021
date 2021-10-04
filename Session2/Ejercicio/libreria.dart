import 'libro.dart';

class Libreria{
  List<Libro> _libros = [];

  static final _instance = Libreria._internal();

  Libreria._internal();

  factory Libreria() => _instance;

  void agregarLibro(Libro libro) => _libros.add(libro);

  void listarLibros() => _libros.forEach(print);
}