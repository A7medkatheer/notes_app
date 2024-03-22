import 'package:flutter/material.dart';
import 'package:notes_app/models/notes_models.dart';
// import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewbody(
        note: note,
      ),
    );
  }
}
