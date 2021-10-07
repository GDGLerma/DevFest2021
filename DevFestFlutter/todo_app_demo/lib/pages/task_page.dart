import 'package:flutter/material.dart';
import 'package:todo_app_demo/models/note_model.dart';
import 'package:todo_app_demo/widgets/note_item.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteModel(date: DateTime.now(), title: 'Prueba', status: 1);
    final note2 = NoteModel(date: DateTime.now(), title: 'Prueba', status: 2);
    final note3 = NoteModel(date: DateTime.now(), title: 'Prueba', status: 3);
    final note4 = NoteModel(date: DateTime.now(), title: 'Prueba', status: 4);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        children: [
          NoteItem(note: note),
          NoteItem(note: note2),
          NoteItem(note: note3),
          NoteItem(note: note4),
          NoteItem(note: note),
          NoteItem(note: note2),
          NoteItem(note: note3),
          NoteItem(note: note4),
          NoteItem(note: note),
          NoteItem(note: note2),
          NoteItem(note: note3),
          NoteItem(note: note4),
          NoteItem(note: note),
          NoteItem(note: note2),
          NoteItem(note: note3),
          NoteItem(note: note4),
          NoteItem(note: note),
          NoteItem(note: note2),
          NoteItem(note: note3),
          NoteItem(note: note4),
        ],
      ),
    );
  }
}