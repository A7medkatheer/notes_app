import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
     notes = notesBox.values.toList();
     emit(NotesSuccess( notes!));

  }
}
