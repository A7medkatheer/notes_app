import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/notes_models.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/cubit/add_note_cubit.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/widgets/constant.dart';

void main() async {
  await Hive.initFlutter();
    Bloc.observer = SimpleBlocObserver(); 
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddNoteCubit(),
          ),
        ],

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
          ),
          home: const NotesView(),
        ),
      ),
    );
   
    
  
  }
}
