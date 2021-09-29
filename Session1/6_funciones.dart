main(List<String> args) {
  print(
    filtrarLista([1,2,3,4,5,6,7,8,9,10],(numero)=>numero%2==0)
  );
}

void aumentarValor(int numero,int aumento){
  numero+=aumento;
  print(numero);
}

void aumentarValor2(int numero,[int aumento = 0]){
  numero+=aumento;
  print(numero);
}

void aumentarValor3({int numero = 2,int aumento = 0}){
  numero+=aumento;
  print(numero);
}

int aumentoLambda(int numero,int aumento) => numero+=aumento;

List<int> filtrarLista(List<int> lista,Function callback){
  List<int> resultado = [];
  lista.forEach((element) {
    if(callback(element)){
      resultado.add(element);
    }
  });

  return resultado;
}