import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';
import 'package:notes_app/views/widgets/notes_view_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          const NotesViewAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          const Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
