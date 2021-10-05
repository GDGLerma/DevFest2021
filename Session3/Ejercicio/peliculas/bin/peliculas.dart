import 'package:peliculas/pelicula_servicio.dart';

void main(List<String> arguments) async{
  final servicio = PeliculaServicio();
  final peliculas = await servicio.obtenerPopulares();

  print(peliculas);
}
