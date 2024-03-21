import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/views/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNotesBottonSheet extends StatelessWidget {
  const AddNotesBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            debugPrint("failure  ${state.errMessage}");
          }

          if (state is AddNoteSuccess) {
            // Navigator.pop(context);
          }
          if (state is AddNoteLoading) {
            debugPrint("loading");
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
