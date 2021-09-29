main(List<String> args) {
  /**
   * Operadores matematicos
   * + Suma
   * - Resta
   * * Multiplicacion
   * / Division flotante
   * ~/ Division entera
   * % Residuo
   * ++ Incremento
   * -- Decremento
   */

  int a = 10+5;
  a = 20-10;

  double b = 10/2;
  // int b2 = 10/2; 

  int c = 10~/3;

  int contador = 0;
  contador++;
  contador+=2;

  /**
   * Operadores condicionales
   * < Menor que
   * <= Menor igual
   * > Mayor que
   * >= Mayor igual
   * == Igual
   * != Diferente
   */

  int b2 = 23;
  String respuesta = b2>25?'C es mayor a 25':'C es menor a 25';

  /**
   * Operadores de tipo
   */
  int entero = 10;
  print(entero is int);
}