import 'package:debunk/global/color.dart';
import 'package:debunk/widgets/button.dart';
import 'package:debunk/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:debunk/controller/register_controller.dart';

class RegisterDetail extends StatelessWidget {
  RegisterDetail({
    Key? key,
  }) : super(key: key);
  bool isChoiced = false;
  @override
  Widget build(BuildContext context) {
    final RegisterController rc = Get.put(RegisterController());
    return Scaffold(
      backgroundColor: GlobalColor.mainColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 103.h,
          bottom: 265.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //头部logo
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('拍照上传');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 15.h,
                                  bottom: 15.h,
                                ),
                                child: Text(
                                  '拍照上传',
                                  style: TextStyle(
                                    fontSize: 16.w,
                                    color: GlobalColor.titleColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: GlobalColor.dividColor,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('从相册中选择');
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 14.h,
                                  bottom: 15.h,
                                ),
                                child: Text(
                                  '从相册中选择',
                                  style: TextStyle(
                                    fontSize: 16.w,
                                    color: GlobalColor.titleColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Divider(
                              height: 9.w,
                              color: GlobalColor.bgColor3,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('取消');
                                Get.back();
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 15.h,
                                  bottom: 14.h,
                                ),
                                child: Text(
                                  '取消',
                                  style: TextStyle(
                                    fontSize: 16.w,
                                    color: GlobalColor.titleColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/default_logo.png',
                    fit: BoxFit.cover,
                    width: 110.w,
                    height: 110.w,
                  ),
                ),
              ),
              //中间部分
              Padding(
                padding: EdgeInsets.only(
                  left: 40.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '昵称',
                      style: TextStyle(
                        fontSize: 16.w,
                        color: GlobalColor.titleColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                controller: rc.nicknameController,
                                style: TextStyle(
                                  color: GlobalColor.subTitleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.w,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(0),
                                  hintText: '请输入昵称',
                                  hintStyle: TextStyle(
                                    color: GlobalColor.subTitleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.w,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                onSaved: (val) => rc.nickname = val.toString(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Text(
                            '性别',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16.w,
                              color: GlobalColor.titleColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        BtnDemo(
                          borderRadiusSize: 40.w,
                          borderWidth: 1.w,
                          borderColor: GlobalColor.bgColor,
                          btnheight: 40.h,
                          btnwidth: 67.w,
                          paddingBottom: 10.h,
                          paddingLeft: 0.w,
                          paddingRight: 30.w,
                          paddingTop: 10.h,
                          text: '男',
                          textFw: FontWeight.w400,
                          textSize: 14.w,
                          textColor: GlobalColor.subTitleColor,
                          bgColor: GlobalColor.bgColor,
                          onClick: () {
                            print("选择了性别为：男");
                          },
                        ),
                        BtnDemo(
                          borderRadiusSize: 40.w,
                          borderWidth: 1.w,
                          borderColor: GlobalColor.bgColor,
                          btnheight: 40.h,
                          btnwidth: 67.w,
                          paddingBottom: 10.h,
                          paddingLeft: 0.w,
                          paddingRight: 0.w,
                          paddingTop: 10.h,
                          text: '女',
                          textFw: FontWeight.w400,
                          textSize: 14.w,
                          textColor: GlobalColor.subTitleColor,
                          bgColor: GlobalColor.bgColor,
                          onClick: () {
                            print("选择了性别为：女");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //完成按钮
              Center(
                child: BtnDemo(
                  borderRadiusSize: 32.w,
                  borderWidth: 1.w,
                  btnheight: 40.h,
                  btnwidth: 150.w,
                  paddingBottom: 9.h,
                  paddingLeft: 110.w,
                  paddingRight: 115.w,
                  paddingTop: 9.h,
                  text: '完成',
                  textFw: FontWeight.w400,
                  textSize: 14.w,
                  onClick: () {
                    rc.getNickName();
                    print("点击了完成按钮");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
