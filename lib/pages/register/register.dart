import 'dart:ui';
import 'package:debunk/controller/register_controller.dart';
import 'package:debunk/global/color.dart';
import 'package:debunk/widgets/agree_and_privacy.dart';
import 'package:debunk/widgets/button.dart';
import 'package:debunk/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegisterController rc = Get.put(RegisterController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: GlobalColor.mainColor,
          body: Column(
            children: [
              const PageTitle(),
              Form(
                key: rc.registerfromkey,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 40.w, top: 50.h, right: 40.w, bottom: 50.h),
                  child: Column(
                    children: [
                      //账号输入框
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '账号',
                            style: TextStyle(
                              fontSize: 16.w,
                              color: GlobalColor.titleColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 253.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: GlobalColor.bgColor,
                              border: Border.all(
                                width: 2.w,
                                color: GlobalColor.mainColor,
                              ),
                              borderRadius: BorderRadius.circular(40.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15.w,
                              ),
                              child: TextFormField(
                                controller: rc.accountController,
                                style: TextStyle(
                                  color: GlobalColor.subTitleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.w,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(0),
                                  hintText: '请输入账号',
                                  hintStyle: TextStyle(
                                    color: GlobalColor.subTitleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.w,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                onSaved: (val) =>
                                    rc.accountValue = val.toString(),
                                validator: validatorAccount, //验证账号
                                autovalidateMode:
                                    AutovalidateMode.disabled, //关闭自动验证
                              ),
                            ),
                          ),
                        ],
                      ),
                      //密码输入框
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '密码',
                              style: TextStyle(
                                fontSize: 16.w,
                                color: GlobalColor.titleColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 253.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: GlobalColor.bgColor,
                                border: Border.all(
                                  width: 2.w,
                                  color: GlobalColor.mainColor,
                                ),
                                borderRadius: BorderRadius.circular(40.w),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                ),
                                child: TextFormField(
                                  controller: rc.pwdController,
                                  style: TextStyle(
                                    color: GlobalColor.subTitleColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.w,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(0),
                                    hintText: '请输入密码',
                                    hintStyle: TextStyle(
                                      color: GlobalColor.subTitleColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.w,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  obscureText: true,
                                  onSaved: (pwd) =>
                                      rc.pwdValue = pwd.toString(),
                                  validator: validatorPassword, //验证密码
                                  autovalidateMode:
                                      AutovalidateMode.disabled, //关闭自动验证
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //确认密码输入框
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '确认',
                            style: TextStyle(
                              fontSize: 16.w,
                              color: GlobalColor.titleColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 253.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: GlobalColor.bgColor,
                              border: Border.all(
                                width: 2.w,
                                color: GlobalColor.mainColor,
                              ),
                              borderRadius: BorderRadius.circular(40.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15.w,
                              ),
                              child: TextFormField(
                                controller: rc.pwd2Controller,
                                style: TextStyle(
                                  color: GlobalColor.subTitleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.w,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(0),
                                  hintText: '请再次输入密码',
                                  hintStyle: TextStyle(
                                    color: GlobalColor.subTitleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.w,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                obscureText: true,
                                onSaved: (pwd2) =>
                                    rc.pwd2Value = pwd2.toString(),
                                validator: validatorPassword, //验证密码
                                autovalidateMode:
                                    AutovalidateMode.disabled, //关闭自动验证
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              BtnDemo(
                text: '注册',
                textFw: FontWeight.w500,
                textSize: 16.w,
                btnwidth: 339.w,
                btnheight: 50.h,
                paddingBottom: 14.h,
                paddingLeft: 18.w,
                paddingRight: 18.w,
                paddingTop: 14.h,
                borderRadiusSize: 32.w,
                borderWidth: 2.w,
                onClick: () {
                  rc.registerApi();
                  print('点击了注册按钮');
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              const AgreementAndPrivacy(),
            ],
          )),
    );
  }
}

//页面标题
class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 120.h,
      ),
      child: Center(
        child: Text(
          '新用户注册',
          style: TextStyle(
            color: GlobalColor.titleColor,
            fontSize: 24.w,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
