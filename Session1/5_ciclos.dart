import 'dart:io';

import 'dart:math';

main(List<String> args) {
  
}

//Ciclo For
void cicloFor(){
  print('Que tabla deseas?');
  int tabla = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print('$i x $tabla = ${i*tabla}');
  }
}

//Ciclo for in
void cicloForIn(){
  List<String> listado = ['One Piece', 'Fairy Tail', 'Pokemon'];
  for (var anime in listado) {
    print(anime);
  }
}

// Ciclo while
void cicloWhile(){
  String respuesta = 'n';
  while (respuesta == 'n') {
    print('Quieres ser mi novia? (y/n)');
    respuesta = stdin.readLineSync()!;
  }
}

// Ciclo doWhile
void cicloDoWhile(){
  String respuesta = 'n';
  do {
    print('Quieres ser mi novia? (y/n)');
    respuesta = stdin.readLineSync()!;
  }while (respuesta == 'n');
}

// Break Continue
breakContinue() {
  for (int i = 0; i < 15; i++) {
    if (i%2 == 0) continue;
    print(i);

    if (i == 10) break;
  }
}

// ForNombrado
forNombrado() {
  primerFor:
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');
    segundoFor:
    for (int j = 0; j < 5; j++) {
      print('Valor de j: $j');
      if (j == 2) break primerFor;
    }
  }
}

//Switch
switchEjemplo() {
  int dia = Random().nextInt(8);
  switch (dia) {
    case 0:
      print('Lunes');
      break;
    case 1:
      print('Martes');
      break;
    case 2:
      print('Miercoles');
      break;
    case 3:
      print('Jueves');
      break;
    case 4:
      print('Viernes');
      break;
    case 5:
      print('Sabado');
      break;
    case 6:
      print('Domingo');
      break;
    default:
      print('No es un dia de la semana');
  }
}