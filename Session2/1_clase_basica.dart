class Libro{
  late String titulo;
  late String autor;
  late String genero;

  @override
  String toString() {
    return {
      'titulo':titulo,
      'autor':autor,
      'genero':genero
    }.toString();
  }
}

main(List<String> args) {
  Libro libro = new Libro();
  libro.autor = 'Michelle Hercar';
  libro.titulo = 'La sucesora de la Diosa Luna';
  libro.genero = 'Romance';
  print(libro);
}