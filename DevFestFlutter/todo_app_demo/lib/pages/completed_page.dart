import 'package:flutter/material.dart';
import 'package:todo_app_demo/data/notes_data.dart';
import 'package:todo_app_demo/models/note_model.dart';
import 'package:todo_app_demo/widgets/note_item.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notesData = NotesData();
    List<NoteModel> notes = notesData.notesCompleted;
    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: notes.length,
        itemBuilder: (context,position)=>NoteItem(note: notes[position]),
      ),
    );
  }
}