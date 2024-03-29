import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar(
      {Key? key, required this.icon, required this.title, this.onpressed})
      : super(key: key);
  final IconData icon;
  final String title;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30.sp,
          ),
        ),
        const Spacer(),
        Container(
          height: 50.h,
          width: 50.w,
          // color: Colors.white.withOpacity(.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.02),
          ),
          child: IconButton(
            icon: Icon(
              icon,
              size: 30.sp,
              color: Colors.white,
            ),
            onPressed: onpressed,
          ),
        ),
      ],
    );
  }
}
