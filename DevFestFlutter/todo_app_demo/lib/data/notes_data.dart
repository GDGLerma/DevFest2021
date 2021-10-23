import 'package:todo_app_demo/models/note_model.dart';

class NotesData{

  static NotesData? _instance;

  List<NoteModel> _notes = [];

  factory NotesData(){
    _instance ??= NotesData._internal();

    return _instance!;
  }

  NotesData._internal();

  void addNote(NoteModel note) => _notes.add(note);

  List<NoteModel> get notesCompleted => _notes.where((element) => element.status==4).toList();

  List<NoteModel> get pendingNotes => _notes.where((element) => element.status!=4).toList();

}