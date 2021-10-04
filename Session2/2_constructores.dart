enum Genero{
  Romance,Fantasia,Horror
}

class Libro{
  late String titulo;
  late String autor;
  late Genero genero;
  String _desc = 'Sin descripcion';
  // Constructor basico
  Libro(titulo,autor,genero){
    this.titulo = titulo;
    this.autor = autor;
    this.genero = genero;
  }

  // Constructor nombrado
  Libro.basico(this.titulo,this.autor,this.genero);

  Libro.romance(this.titulo,this.autor,{this.genero = Genero.Romance});

  // get y set
  String get desc => _desc.toUpperCase();
  set desc(String desc) => _desc=desc;

  @override
  String toString() {
    return {
      'titulo':titulo,
      'autor':autor,
      'genero':genero,
      'descipcion':desc
    }.toString();
  }
}

main(){
  final libro = Libro('Cazadores de Sombras','Cassandra Clare',Genero.Fantasia);

  final libroBasico = Libro.basico('Yo antes de ti', 'Jojo Moyes', Genero.Romance);

  final libroRomance = Libro.romance('La sucesora de la Diosa Luna', 'Michelle Hercar');
  libroRomance.desc = 'Trata sobre lobos';

  print(libro);
  print(libroBasico);
  print(libroRomance);
}