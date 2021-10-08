import 'package:debunk/global/public.dart';
import 'package:debunk/pages/register/register_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'pages/index/index.dart';
import 'pages/login/login.dart';
import 'pages/register/register.dart';
import 'pages/home/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        GlobalSize.width,
        GlobalSize.height,
      ),
      builder: () => GetMaterialApp(
        //不显示右上角的debug图标
        debugShowCheckedModeBanner: false,
        //主题
        theme: ThemeData(
          primaryColor: Colors.blue,
          brightness: Brightness.light,
        ),
        //国际化
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          // ignore: prefer_const_constructors
          // Locale('zh','CN'),
        ],
        supportedLocales: const [
          Locale('zh', 'CN'),
          Locale('en', 'Us'),
        ],
        //路由
        initialRoute: '/registerDetail',
        routes: {
          '/': (context) => MainPage(
                notLogin: const IndexPage(), //主页
                hadLogin: HomePage(), //首页
              ),
          // '/index': (context) => const IndexPage(),
          '/login': (context) => const LoginPage(), //登录页
          '/register': (context) => RegisterPage(), //注册页
          '/registerDetail': (context) => RegisterDetail(), //设置注册信息
          // '/home': (context) => HomePage(),
        },
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Widget notLogin, hadLogin;
  const MainPage({
    Key? key,
    required this.notLogin,
    required this.hadLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLoginIn = false;
    return Scaffold(
      // ignore: dead_code
      body: !isLoginIn ? notLogin : hadLogin,
    );
  }
}
