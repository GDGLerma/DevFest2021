main(List<String> args) {
  print('Tarea asignada');

  final fechaLimite = DateTime.now();
  final fechaEntrega = DateTime(fechaLimite.year,fechaLimite.month,fechaLimite.day+1);
  print('La tarea debe ser entregada antes de ${fechaLimite.toString()}');

  Future<String> entregarTarea = Future.delayed(Duration(seconds: 3),(){
    if(fechaEntrega.isBefore(fechaLimite)){
      return 'Tarea calificada';
    }

    throw 'Reprobado';
  });

  print('Los resultados de su tarea son');

  entregarTarea.then(print)
              .catchError((error)=>print(error));
}