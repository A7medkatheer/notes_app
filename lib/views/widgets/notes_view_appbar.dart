import 'package:flutter/material.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          // color: Colors.white.withOpacity(.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.02),
          ),
          child: IconButton(
            icon: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
