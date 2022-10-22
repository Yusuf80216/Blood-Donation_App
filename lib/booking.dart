import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
        Center(
          child: Container(
            height: 325.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
            ),
            child: Image.asset("assets/booking-img.png"),
          ),
        ),
        SizedBox(height: 39.h),
        Text("      Blood Bank\nLocation Near You",
        style: TextStyle(fontSize: 20.sp)),
        SizedBox(height: 39.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 74.h,
              width: 131.w,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.gps_fixed,
              color: Colors.white,size: 35.w),
            ),
            SizedBox(width: 32.w),
            Container(
              height: 74.h,
              width: 131.w,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.map,
                  color: Colors.white,size: 35.w),
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Container(
          height: 74.h,
          width: 131.w,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.phone,
              color: Colors.white,size: 35.w),
        ),
        SizedBox(height: 135.h),
        Text("Can I give Blood?",style: TextStyle(color: Colors.redAccent,fontSize: 18.sp)),
        SizedBox(height: 20.h),
        Text("Share on Social Media!",style: TextStyle(color: Colors.redAccent,fontSize: 18.sp)),
      ],
    );
  }

}
