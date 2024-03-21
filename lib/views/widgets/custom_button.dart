import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/widgets/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55.h,
        child: Center(
          child: isloading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  "add",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
