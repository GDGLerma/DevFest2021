import 'package:flutter/material.dart';
import 'package:todo_app_demo/models/note_model.dart';
import 'package:todo_app_demo/widgets/note_item.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = NoteModel(date: DateTime.now(), title: 'Prueba', status: 4);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        children: [
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
          NoteItem(note: note),
        ],
      ),
    );
  }
}