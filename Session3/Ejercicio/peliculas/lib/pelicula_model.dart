class Pelicula{
  String titulo;
  String resumen;
  int id;

  Pelicula({
    required this.titulo,
    required this.resumen,
    required this.id
  });

  factory Pelicula.fromJson(Map<String,dynamic> json)=>Pelicula(
    titulo:json['title'],
    resumen:json['overview'],
    id:json['id']
  );

  @override
  String toString() {
    return {
      'id':id,
      'titulo':titulo,
      'descripcion':resumen
    }.toString();
  }
}