import 'dart:io';

main(List<String> args) {
  print('Cual es tu edad');
  int edad = int.parse(stdin.readLineSync()!);

  // Condicional comun if else
  if(edad>60){
    print('Tercera edad');
  }else if(edad >=18){
    print('Mayor de edad');
  }else{
    print('Menor de edad');
  }

  // Operador ternario
  print(
    edad>60?'Tercera edad'
    :edad>=18?'Mayor de edad'
    :'Menor de edad'
  );  
}