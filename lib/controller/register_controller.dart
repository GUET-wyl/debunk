import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final registerfromkey = GlobalKey<FormState>();
  String account = '', password = '';
  var accountValue, pwdValue, pwd2Value, nickname;
  TextEditingController accountController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController pwd2Controller = TextEditingController();
  TextEditingController nicknameController = TextEditingController();

  //获取账号输入框的值
  getAccountValue() {
    accountValue = accountController.text;
    print('账户输入框中的值为:$accountValue');
  }

  //获取密码输入框的值
  getPwdValue() {
    pwdValue = pwdController.text;
    print('密码输入框中的值为:$pwdValue');
  }

  //获取确认密码输入框的值
  getPwd2Value() {
    pwd2Value = pwd2Controller.text;
    print('确认密码输入框中的值为:$pwd2Value');
  }

  //获取昵称
  getNickName() {
    nickname = nicknameController.text;
    print('输入框中的昵称值为:$nickname');
  }

  //注册按钮
  void registerApi() async {
    getAccountValue();
    getPwdValue();
    getPwd2Value();
    if (accountValue != null && pwdValue != null && pwd2Value != null) {
      if (pwdValue == pwd2Value) {
        //校验输入的信息
        registerfromkey.currentState!.validate();
        //开启轻提示toast
        Fluttertoast.showToast(
          msg: "register...",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        //用户注册api
        var dio = Dio();
        // dio.interceptors.add(LogInterceptor(responseBody: true));
        dio.options.baseUrl = 'http://47.112.160.66:65000/new-life';
        dio.options.headers = {'contentType': 'application/json'};
        var response = await dio.post(
          '/user/register',
          data: {
            "account": accountValue,
            "password": pwdValue,
          },
          // options: Options(
          //   contentType: Headers.jsonContentType,
          // ),
        );
        print('注册接口：${response.data}');
        //判断api是否请求成功
        if (response.data["code"] == 200) {
          //注册成功
          Fluttertoast.cancel(); //关闭清提示toast
          registerfromkey.currentState!.save(); //存储输入框的内容
          Get.toNamed('/registerDetail'); //页面跳转
        } else if (response.data["code"] == 2001) {
          //用户已注册
          Fluttertoast.cancel(); //关闭清提示toast
          Get.toNamed('/login');
        } else {
          //api请求失败
          return;
        }
      } else {
        Fluttertoast.showToast(
          msg: "两次输入的密码不一致，请重新输入",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } else {
      //校验输入的信息
      registerfromkey.currentState!.validate();
      return;
    }
  }
}

//校验账号
String validatorAccount(name) {
  if (name.isEmpty) {
    return 'username is required.';
  } else if (name.length < 3) {
    return '用户名应不少于3个字符';
  }
  return "";
}

//校验密码
String validatorPassword(pwd) {
  if (pwd.isEmpty) {
    return 'password is required.';
  } else if (pwd.length < 3) {
    return '密码应不少于3个字符';
  }
  return "";
}
