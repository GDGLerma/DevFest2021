import 'dart:io';

Future<Map<String,List<String>>> leerBaseDatos() async{
  String path = Directory.current.path + '/assets/db.txt';

  final datos = await File(path).readAsLines();

  Map<String,List<String>> db = {};
  late String clave;

  datos.forEach((data) {
    if(data.startsWith('-')){
      clave = data.replaceAll('-', '');
      db[clave] = [];
    }else{
      db[clave]!.add(data);
    }
  });

  return db;
}

main(List<String> args) async{
  (await leerBaseDatos()).forEach((key, value) {
    print('$key: $value');
   });
}