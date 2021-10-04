class Persona {
  String nombre;
  int edad;
  String direccion;

  Persona(this.nombre, this.edad, this.direccion);

  @override
  String toString() {
    return {'nombre': nombre, 'edad': edad, 'direccion': direccion}.toString();
  }
}

class Ingeniero extends Persona {
  String especialidad;

  Ingeniero(this.especialidad, nombre, edad, direccion)
      : super(nombre, edad, direccion);

  @override
  String toString() {
    return 'La persona ${super.toString()} es ingeniero con especialidad en ${especialidad}';
  }
}

class Escritor extends Persona {
  String apodo;

  Escritor(
      {required this.apodo, required nombre, required edad, required direccion})
      : super(nombre, edad, direccion);

  @override
  String toString() {
    return 'El/La escritora ${super.toString()} se le conoce como $apodo';
  }
}

main(List<String> args) {
  final inge = Ingeniero('Sistemas', 'Luis', 23, 'Mexico');

  final escritor = Escritor(nombre: 'Michelle',direccion: 'Somewhere',apodo: 'Michi', edad: 23);

  print(inge);
  print(escritor);
}
