import 'package:debunk/global/size.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginfromkey = GlobalKey<FormState>();
  String account = '', password = '';
  void loginForm() {
    loginfromkey.currentState!.validate(); //验证登录表单的值
    loginfromkey.currentState!.save(); //保存登录表单的值
    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //   content: Text('login...'),
    //   duration: Duration(seconds: 1),
    // ));
    Fluttertoast.showToast(
      msg: "login...",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: GlobalSize.w16,
    );
  }

  //账户校验
  String validatorAccount(name) {
    if (name.isEmpty) {
      return 'username is required.';
    }
    return "";
  }

//密码校验
  String validatorPassword(pwd) {
    if (pwd.isEmpty) {
      return 'password is required.';
    }
    return "";
  }
}
