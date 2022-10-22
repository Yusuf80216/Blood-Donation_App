import 'package:blood_donation_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: content(),
      ),
      designSize: const Size(390, 844),
    );
  }

  Widget content() {
    return Column(
      children: [
        SizedBox(height: 50.h),
        Center(
          child: Container(
            child: Icon(Icons.bloodtype,
            size: 200.w,
            color: Colors.redAccent),
          ),
        ),
        SizedBox(height: 8.h),
        Text("Please pick your\n     blood type",
        style: TextStyle(
          fontSize: 20.sp,
        )),
        SizedBox(height: 25.h),
        bloodGroupRow("A","B"),
        SizedBox(height: 12.h),
        bloodGroupRow("O","AB"),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 34.h,
              width: 39.w,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text("+",
              style: TextStyle(fontSize: 20.sp))),
            ),
            SizedBox(width: 38.w),
            Container(
              height: 34.h,
              width: 39.w,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text("-",
                  style: TextStyle(fontSize: 20.sp))),
            ),
          ],
        ),
        SizedBox(height: 64.h),
        GestureDetector(
            onTap: () {Navigator.pushNamed(context, '/booking');},
            child: Account_Box("Finish"),),
        SizedBox(height: 8.h),
        GestureDetector(
            onTap: () {Navigator.pushNamed(context, '/booking');},
            child: Text("Book Now!",style: TextStyle(color: Colors.redAccent))),
      ],
    );
  }
}

bloodGroupRow(String bloodType1, bloodType2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 160.w,
        height: 74.h,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Center(child: Text(bloodType1,style: TextStyle(fontSize: 20.sp))),
      ),
      SizedBox(width: 12.w),
      Container(
        width: 160.w,
        height: 74.h,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Center(child: Text(bloodType2,style: TextStyle(fontSize: 20.sp))),
      ),
    ],
  );
}
