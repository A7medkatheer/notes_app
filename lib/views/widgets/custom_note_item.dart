import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EditNotesView())),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                'Flutter tips',
                style: TextStyle(
                    fontSize: 26.sp,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build yours career with tharwat samy',
                  style: TextStyle(
                      fontSize: 18.sp, color: Colors.black.withOpacity(.2)),
                ),
              ),
              trailing:  Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24.sp,
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(right: 10),
              child: Text(
                'May 20, 2021',
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
