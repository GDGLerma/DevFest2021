import 'package:flutter/material.dart';
import 'package:todo_app_demo/data/notes_data.dart';
import 'package:todo_app_demo/models/note_model.dart';

class AlertNewTask extends StatefulWidget {
  const AlertNewTask({ Key? key }) : super(key: key);

  @override
  _AlertNewTaskState createState() => _AlertNewTaskState();
}

class _AlertNewTaskState extends State<AlertNewTask> {

  final List<String> _statusLista = [
    'Normal',
    'Importante',
    'Urgente',
  ];

  String _status = 'Normal';

  TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      title: const Text('Nueva tarea'),
      content: _contentDialog(),
      actions: [
        ElevatedButton(onPressed: ()=>
          _addNote(context)
        , child: Text('Aceptar'))
      ],
    );
  }

  Column _contentDialog() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: TextField(
            controller: _titleController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              icon: Icon(Icons.note_alt),
              hintText: 'Titulo de la tareas',
              labelText: 'Titulo',
            ),
          ),
        ),
        Row(
          children: [
            const Icon(Icons.settings_applications_sharp),
            const SizedBox(width:10.0),
            Expanded(child: DropdownButton(
              value: _status,
              items: _statusLista.map(
                (value) => 
                DropdownMenuItem(
                  child: Text(value),
                  value: value,
                )
              ).toList(),
              onChanged: (seleccion)=>
                setState(() {
                  _status = seleccion.toString();
                }),
            ))
          ],
        )
      ],
    );
  }

  void _addNote(BuildContext context){
    final notes = NotesData();

    notes.addNote(NoteModel(
      date: DateTime.now(), 
      title: _titleController.text,
      status: _status == 'Normal'?1
            : _status == 'Importante'?2:3
      ));

    Navigator.of(context).pop('OK');
  }
}