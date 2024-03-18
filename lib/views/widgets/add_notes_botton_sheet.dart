import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesBottonSheet extends StatelessWidget {
  const AddNotesBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hintText: "add Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
