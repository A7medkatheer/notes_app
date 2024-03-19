import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/constant.dart';
// import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NotesModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotefailure(e.toString()));
      // TODO
    }
  }
}
