import 'package:debunk/global/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//用户协议和隐私政策
class AgreementAndPrivacy extends StatelessWidget {
  const AgreementAndPrivacy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/btn1.png',
          width: 14.w,
          height: 14.h,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 3.w,
        ),
        Text.rich(
          TextSpan(
            text: '登录即代表同意并阅读',
            style: TextStyle(
              fontSize: 14.w,
              color: GlobalColor.titleColor,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: '用户协议',
                style: TextStyle(
                  color: GlobalColor.btnColor,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('用户协议');
                  },
              ),
              TextSpan(
                text: '和',
                style: TextStyle(
                  fontSize: 14.w,
                  color: GlobalColor.titleColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '隐私政策',
                style: TextStyle(
                  color: GlobalColor.btnColor,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('隐私政策');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
