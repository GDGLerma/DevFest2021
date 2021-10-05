main(List<String> args) {
  print('Pedido de pizza realizado');

  Future<String> preparandoPizza = Future.delayed(Duration(seconds: 3),(){
    print('Orden lista');
    return 'Su pizza esta lista';
  });

  print('Espere un momento su pedido estara listo pronto');

  preparandoPizza.then((value) => print(value));
}