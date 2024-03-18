import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/notes_view_appbar.dart';

class EditNotesViewbody extends StatelessWidget {
  const EditNotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          NotesViewAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hintText: "content", maxLines: 5),
        ],
      ),
    );
  }
}
