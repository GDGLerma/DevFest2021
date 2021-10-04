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

class Autor extends Persona {
  String apodo;

  Autor(
      {required this.apodo, required nombre, required edad, required direccion})
      : super(nombre, edad, direccion);

  @override
  String toString() {
    return {
      'datos':super.toString(),
      'apodo':apodo
    }.toString();
  }
}