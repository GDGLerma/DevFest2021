import 'package:flutter/material.dart';
import 'package:todo_app_demo/models/note_model.dart';

class NoteItem extends StatelessWidget {

  final NoteModel note;

  const NoteItem({ Key? key, required this.note }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction)=> note.status = 4,
      key: UniqueKey(),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          contentPadding: const EdgeInsets.all(15.0),
        leading: Image(image:AssetImage('assets/${note.statusIcon}'),),
        title: Text(note.title, style: const TextStyle(fontWeight: FontWeight.bold),),
        trailing: Column(
          children: [
            Text(note.finalDate),
            Text(note.statusLabel)
          ],
        ),
      ),
      ),
    );
  }
}