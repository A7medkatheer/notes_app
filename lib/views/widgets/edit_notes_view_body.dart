import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
// import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/notes_view_appbar.dart';

class EditNotesViewbody extends StatefulWidget {
  const EditNotesViewbody({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NotesModel note;

  @override
  State<EditNotesViewbody> createState() => _EditNotesViewbodyState();
}

class _EditNotesViewbodyState extends State<EditNotesViewbody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          NotesViewAppBar(
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomTextField(
            onchange: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            onchange: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
