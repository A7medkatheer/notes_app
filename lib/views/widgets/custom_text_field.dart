
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, 
    // super.key,
    required this.hintText,
    this.maxLines = 1,   this.onsave,
  }) : super(key: key);
  final String hintText;
  final int maxLines;
  final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onSaved: onsave,
      validator: (value) {
        if (value?.isEmpty??true) {
          return "field is required";
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
