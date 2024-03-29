import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

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
          SizedBox(
            height: 32.h,
          ),
          CustomTextField(
            onsave: (value) {
              title = value;
            },
            hintText: "add Title",
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            onsave: (value) {
              subTitle = value;
            },
            hintText: "content",
            maxLines: 5,
          ),
          SizedBox(
            height: 16.h,
          ),
          const ColorListView(),
          SizedBox(
            height: 32.h,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentData = DateTime.now();
                    var formattedDate =
                        "${currentData.hour}:${currentData.minute}\n ${currentData.year}-${currentData.month}-${currentData.day}";
                    var noteModel = NotesModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 32.h,
          ),
        ],
      ),
    );
  }
}

