import 'package:debunk/global/public.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: GlobalColor.mainColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 65.w,
              top: 140.w,
              right: 66.w,
              bottom: 168.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildLogo(),
                _buildLoginAndRegisterButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

SizedBox _buildLogo() {
  return SizedBox(
    width: 188.w,
    height: 132.w,
    child: Image.asset(
      'assets/logo.png',
      fit: BoxFit.fill,
    ),
  );
}

SizedBox _buildLoginAndRegisterButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 96.w,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //登录按钮
          GestureDetector(
            child: Container(
              width: 244.w,
              height: GlobalSize.w36,
              decoration: BoxDecoration(
                color: GlobalColor.choiceColor,
                borderRadius: BorderRadius.circular(GlobalSize.w4),
              ),
              child: Center(
                child: Text(
                  '登录',
                  style: TextStyle(
                    color: GlobalColor.mainColor,
                    fontSize: GlobalSize.w14,
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, '/login'),
          ),
          //注册按钮
          GestureDetector(
            child: Container(
              width: 244.w,
              height: GlobalSize.w36,
              decoration: BoxDecoration(
                  color: GlobalColor.mainColor,
                  borderRadius: BorderRadius.circular(GlobalSize.w4),
                  border: Border.all(
                    width: 1.w,
                    color: GlobalColor.choiceColor,
                  )),
              child: Center(
                child: Text(
                  '注册',
                  style: TextStyle(
                    color: GlobalColor.choiceColor,
                    fontSize: GlobalSize.w14,
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, '/register'),
          ),
        ],
      ),
    ),
  );
}
