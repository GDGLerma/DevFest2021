import 'dart:convert';

import 'package:peliculas/pelicula_model.dart';
import 'package:http/http.dart' as http;

class PeliculaServicio{
  final String _apiKey = 'pon tu api key aqui';
  final String _url = 'https://api.themoviedb.org/3/movie';

  Future<List<Pelicula>> obtenerPeliculas() async{
    final peticion = await http.get(Uri.parse(
      '$_url/now_playing?api_key=$_apiKey&language=es-ES'
    ));

    final datos = json.decode(peticion.body);

    return List.from(
      datos['results'].map((pelicula)=>Pelicula.fromJson(pelicula))
    );
  }

  Future<List<Pelicula>> obtenerPopulares() async{
    final peticion = await http.get(Uri.parse(
      '$_url/popular?api_key=$_apiKey&language=es-ES'
    ));

    final datos = json.decode(peticion.body);

    return List.from(
      datos['results'].map((pelicula)=>Pelicula.fromJson(pelicula))
    );
  }
}