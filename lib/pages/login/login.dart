import 'package:debunk/controller/login_controller.dart';
import 'package:debunk/global/color.dart';
import 'package:debunk/global/public.dart';
import 'package:debunk/global/size.dart';
import 'package:debunk/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final LoginController lc = Get.put(LoginController());
    return SafeArea(
      child: Scaffold(
        body: Text("登录页"),
      ),
    );
  }
}

//返回按钮
class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0.w,
          backgroundColor: GlobalColor.mainColor,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              'assets/back_black.png',
              width: 16.w,
              height: 8.h,
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(44), //自定义appBar的高度
      ),
    );
  }
}

//标题内容
class TitleCon extends StatelessWidget {
  const TitleCon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 70.w,
        bottom: 100.w,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '登录',
            style: TextStyle(
              color: GlobalColor.titleColor,
              fontSize: GlobalSize.w32,
            ),
          ),
          Text(
            '输入账号及密码',
            style: TextStyle(
              color: GlobalColor.subTitleColor,
              fontSize: GlobalSize.w18,
            ),
          ),
        ],
      ),
    );
  }
}

//输入框的账户
class AccountInput extends StatelessWidget {
  final LoginController lc = Get.find();
  AccountInput({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      key: lc.loginfromkey,
      child: Column(
        children: [
          //文本表单字段
          SizedBox(
            // width: 327.w,
            // height: 48.h,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: '账户',
                labelStyle: TextStyle(
                  color: GlobalColor.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: GlobalSize.w12,
                ),
                helperText: '',
              ),
              onSaved: (value) {
                lc.account = value.toString();
              },
              validator: lc.validatorAccount,
              autovalidateMode: AutovalidateMode.disabled,
            ),
          ),
        ],
      ),
    );
  }
}

//输入框的密码
class PwdInput extends StatelessWidget {
  final LoginController lc = Get.find();
  PwdInput({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 327.w,
      // height: 48.w,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: '密码',
          labelStyle: TextStyle(
            color: GlobalColor.textColor,
            fontWeight: FontWeight.w600,
            fontSize: GlobalSize.w12,
          ),
        ),
        onSaved: (value) {
          lc.password = value.toString();
        },
        validator: lc.validatorPassword,
        autovalidateMode: AutovalidateMode.disabled,
      ),
    );
  }
}

//登录或注册按钮
class LoginOrRegisterBtn extends StatelessWidget {
  final LoginController lc = Get.find();
  LoginOrRegisterBtn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: lc.loginForm,
      child: Container(
        // width: 327.w,
        // height: 48.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: GlobalColor.choiceColor,
          borderRadius: BorderRadius.all(Radius.circular(4.w)),
        ),
        child: Text(
          '登录',
          style: TextStyle(
            color: GlobalColor.mainColor,
            fontSize: GlobalSize.w18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
