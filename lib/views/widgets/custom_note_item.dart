import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/notes_cubit/notes_cubit.dart';

import 'package:notes_app/views/edit_notes_view.dart';
// import 'package:notes_app/views/widgets/constant.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditNotesView(
            note: note,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                    fontSize: 26.sp,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 18.sp, color: Colors.black.withOpacity(.2)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  // delete note.
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24.sp,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.2),
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
