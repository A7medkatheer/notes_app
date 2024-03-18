import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesBottonSheet extends StatelessWidget {
  const AddNotesBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onsave: (value) {
              title = value;
            },
            hintText: "add Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsave: (value) {
              subTitle = value;
            },
            hintText: "content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(context, [title, subTitle]);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
