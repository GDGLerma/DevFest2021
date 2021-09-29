main(List<String> args) {
  sets();
}

// Listas
void listas(){
  List<String> personajes = ['Luffy','Zoro','Nami','Perona','Usopp'];
  print(personajes);

  // Constructores de listas
  List<String> lista = [];
  List<String> lista1 = List.filled(3,'0',growable: true);
  lista1.add('Doom');
  print(lista1);

  List<String> lista2 = List.generate(10,(int index)=>(index*2).toString());
  print(lista2);

  print('Length: ${personajes.length}');
  print('First: ${personajes.first}');
  print('Last: ${personajes.last}');
  print('Vacia: ${personajes.isEmpty}');
  print('AsMap: ${personajes.asMap()[2]}');
  print('IndexOf: ${personajes.indexOf('Perona')}');

  print('Remove: ${personajes.remove('Nami')}');
  print('Remove: ${personajes}');

  personajes..add('Chopper')
            ..add('Franky');

  print('Operador cascada: ${personajes}');

  personajes.shuffle();
  print('Suffle: $personajes');

  personajes.sort();
  print('Sort: $personajes');
  print('Reverse: ${personajes.reversed.toList()}');

  personajes.forEach((elemento) {
    elemento = elemento.toUpperCase();
    print(elemento);
  });

  final newList = personajes.map((e) => e.toUpperCase()).toList();
  print('Map: $newList');
}

void mapas(){
  final luis = {
    'nombre':'Luis',
    'edad':23,
    'apellido':'Juarez'
  };

  print('Persona: $luis');
  print('Length: ${luis.length}');
  print('Keys: ${luis.keys}');
  print('Values: ${luis.values}');

  final direccion = {
    'ciudad':'Lerma',
    'pais':'México'
  };

  luis.addAll(direccion);
  print('AddAll: ${luis}');

  luis.remove('pais');
  print('Remove: ${luis}');

  luis.forEach((key, value) => print('key: $key, value: $value'));

  final newMap = luis.map((key, value) { 
    return MapEntry(value, key);
  });

  print('NewMap: $newMap');
}

void sets(){
  Set<String> raperos = {'Lit Killah','Mc Davo','Porta'};
  raperos.add('Porta');
  print(raperos);
}