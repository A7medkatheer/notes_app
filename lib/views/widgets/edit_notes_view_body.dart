import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/notes_view_appbar.dart';

class EditNotesViewbody extends StatelessWidget {
  const EditNotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          const NotesViewAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50.h,
          ),
          const CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextField(hintText: "content", maxLines: 5),
        ],
      ),
    );
  }
}
