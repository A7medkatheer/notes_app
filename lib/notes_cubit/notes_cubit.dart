import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());


fetchAllNotes() {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      List<NotesModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }




}
