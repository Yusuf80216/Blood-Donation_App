import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: content(),
      ),
      designSize: const Size(390, 844),
    );
  }

  content() {

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFE4849),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r), bottomRight: Radius.circular(30.r)),
          ),
          height: 455.h,
          width: double.infinity,
          child: Image.asset("assets/splash_img.png"),
        ),
        SizedBox(height: 120.h),
        Account_Box('Sign in'),
        SizedBox(height: 37.h),
        Account_Box('Create Account'),
        SizedBox(height: 20.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33.5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text("Learn more",style: TextStyle(fontSize: 15.sp,color: Color(0xffFE4849))),
                Spacer(),
                GestureDetector(
                  onTap: () {Navigator.of(context).pushNamed('/survey');},
                    child: Text("Skip now ->",style: TextStyle(fontSize: 15.sp,color: Color(0xffFE4849)))),
              ],
            ),
          ),
        ),
      ],
    );
  }

}


Account_Box(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 33.5),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffFE4849),
        borderRadius: BorderRadius.circular(20.r),
      ),
      width: double.infinity,
      height: 56.h,
      child: TextButton(
        onPressed: () {},
        child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
            )),
      ),
    ),
  );
}