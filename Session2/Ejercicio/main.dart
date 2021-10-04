import 'escritor.dart';
import 'libreria.dart';
import 'libro.dart';

main(List<String> args) {
  final libreria = Libreria();

  final autor1 = Autor(apodo: 'Michi', nombre: 'Michelle', edad: 24, direccion: 'Algun lugar');
  final libro1 = Libro(titulo: 'La sucesora de la Diosa Luna', genero: Genero.Fantasia, autor: autor1);

  libreria.agregarLibro(libro1);

  final autor2 = Autor(apodo: 'Jojo', nombre: 'Jojo Moyes', edad: 24, direccion: 'Algun lugar');
  final libro2 = Libro(titulo: 'Yo antes de ti', genero: Genero.Romance, autor: autor2);

  libreria.agregarLibro(libro2);

  final libreriaNueva = Libreria();
  final autor3 = Autor(apodo: 'Stephen', nombre: 'Stephen King', edad: 24, direccion: 'Algun lugar');
  final libro3 = Libro(titulo: 'Carrie', genero: Genero.Horror, autor: autor3);

  libreriaNueva.agregarLibro(libro3);

  libreriaNueva.listarLibros();

  print(libreriaNueva == libreria);
}