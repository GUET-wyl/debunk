import 'package:debunk/global/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  TextEditingController? controller;

  TextInput({
    Key? key,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 253.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: GlobalColor.bgColor,
        border: Border.all(width: 2.w, color: GlobalColor.mainColor),
        borderRadius: BorderRadius.circular(40.w),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
        ),
        child: TextFormField(
          controller: controller,
          style: TextStyle(
            color: GlobalColor.subTitleColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.w,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0),
            hintText: '$hintText',
            hintStyle: TextStyle(
              color: GlobalColor.subTitleColor,
              fontWeight: FontWeight.w400,
              fontSize: 14.w,
            ),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
          onSaved: null,
          validator: null, //验证
          autovalidateMode: AutovalidateMode.disabled, //关闭自动验证
        ),
      ),
    );
  }
}
