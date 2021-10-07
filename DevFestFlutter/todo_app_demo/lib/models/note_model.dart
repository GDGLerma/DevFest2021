class NoteModel {
  String title;
  int status;
  DateTime date;

  NoteModel({required this.date, required this.title, required this.status});

  String get finalDate => date.toString().split(' ')[0];

  String get statusIcon => status == 1
      ? 'normal.png'
      : status == 2
          ? 'medio.png'
          : status == 3
              ? 'urgente.png'
              : 'completa.png';

  String get statusLabel => status == 1
      ? 'Normal'
      : status == 2
          ? 'Importante'
          : status == 3
              ? 'Urgente'
              : 'Completa';
}
