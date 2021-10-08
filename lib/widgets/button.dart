import 'package:flutter/material.dart';

class BtnDemo extends StatelessWidget {
  final double btnwidth,
      btnheight,
      paddingTop,
      paddingBottom,
      paddingLeft,
      paddingRight,
      textSize,
      borderWidth,
      borderRadiusSize;
  final String text;
  final FontWeight textFw;
  final Color textColor, borderColor, bgColor;
  final onClick;
  BtnDemo({
    Key? key,
    required this.btnwidth,
    required this.btnheight,
    required this.paddingTop,
    required this.paddingBottom,
    required this.paddingLeft,
    required this.paddingRight,
    required this.textSize,
    required this.borderWidth,
    required this.borderRadiusSize,
    required this.text,
    required this.textFw,
    this.textColor = const Color(0xffffffff),
    this.borderColor = const Color(0xff2cffb0),
    this.bgColor = const Color(0xff2cffb0),
    this.onClick,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          paddingLeft, paddingTop, paddingRight, paddingBottom),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          //按钮的宽高、文字以及样式
          width: btnwidth,
          height: btnheight,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: textFw,
                color: textColor,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusSize),
            ),
            color: bgColor, //按钮的背景色
          ),
        ),
      ),
    );
  }
}
