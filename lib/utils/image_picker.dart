import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerState();
  }
}

class _ImagePickerState extends State<ImagePickerPage> {
  // 图片文件
  late File _image;
  // 实例化
  final picker = ImagePicker();
  // 获取图片
  Future getImage() async {
    final pickedFile = await picker.pickImage(
      // 拍照获取图片
      // source: ImageSource.camera,

      // 手机选择图库
      source: ImageSource.gallery,
      // 图片的最大宽度
      maxWidth: 400,
    );
    // 更新状态
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        // 上传图片到服务器
        uploadImg(pickedFile.path);
      } else {
        print('没有选择任何图片');
      }
    });
  }

  var dio = Dio();
  // 上传图片的方法
  void uploadImg(imageUrl) async {
    FormData formData = FormData.fromMap({
      "name": "admin",
      "password": 123456,
      "file": await MultipartFile.fromFile(imageUrl, filename: "avatar.img")
    });
    var result =
        await dio.post("http://js.itying.com/imgupload", data: formData);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ImagePicker"),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 点击按钮
            ElevatedButton(
              onPressed: getImage,
              child: Text("获取图片"),
            ),
            // 展示图片
            Center(
              child: _image == null ? Text('没有选择任何图片') : Image.file(_image),
            ),
          ],
        )));
  }
}
