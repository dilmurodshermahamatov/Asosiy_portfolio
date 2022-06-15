import 'package:b01/Home.dart';
import 'package:b01/Malumotlar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sahifa5 extends StatefulWidget {
  int? text;
  int? index;
  Sahifa5(this.text, this.index, {Key? key}) : super(key: key);

  @override
  State<Sahifa5> createState() => _Sahifa5State();
}

class _Sahifa5State extends State<Sahifa5> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Name.white,
          appBar: AppBar(
            toolbarHeight: 70.h,
            elevation: 0,
            backgroundColor: Name.white,
            leading: Container(
              margin: EdgeInsets.only(left: 13.w, top: 25.h, bottom: 5.h),
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Color.fromARGB(179, 221, 220, 220),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30.sp,
                  color: Name.black,
                ),
              ),
            ),
            title: Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  margin: EdgeInsets.only(top: 20.h),
                  child: Image.asset(Malumot.img[widget.index!]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 7.w),
                  child: Text(
                    Malumot.ism[widget.text!],
                    style: TextStyle(color: Name.black, fontSize: 16.sp),
                  ),
                ),
              ],
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10.w, top: 25.h, bottom: 5.h),
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: Name.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Color.fromARGB(179, 221, 220, 220),
                  ),
                ),
                child: Icon(
                  Icons.phone_outlined,
                  size: 30.sp,
                  color: Name.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.w, top: 25.h, bottom: 5.h),
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Name.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Color.fromARGB(179, 221, 220, 220),
                  ),
                ),
                child: Image.asset(
                  "assets/icon/call.png",
                  color: Name.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.w, left: 20.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 230.0.w,
                            height: 80.0.h,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15.h, left: 10.w),
                              child: Text(
                                "Ассалому алайкум, хаво узгарганда бошим азгина огриб туради, нима килсам булади ?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 210.0.w,
                            height: 90.0.h,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(228, 228, 228, 0.702),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomRight: Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h, left: 10.w),
                              child: Text(
                                "Добрый день, если голова болить когда будет дождь тогда у Вас скорее всего мигрень",
                                style: TextStyle(color: Name.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 130.0.w,
                            height: 95.0.h,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 20.h, left: 30.w, right: 20.w),
                              child: Text(
                                "как то его можно лечить ?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 200.0.w,
                            height: 70.0.h,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(228, 228, 228, 0.702),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomRight: Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 20.h, left: 20.w, right: 20.w),
                              child: Text(
                                "Да конечно, сейчас медицина ....... . ... . . . ",
                                style: TextStyle(
                                  color: Name.black,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 80.0.w,
                            height: 30.0.h,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w, top: 5.h),
                              child: Text(
                                "... . . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            width: 240.0.w,
                            height:
                                MediaQuery.of(context).size.height * 0.075.h,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(228, 228, 228, 0.702),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                  bottomRight: Radius.circular(15.r)),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Icon(
                                        Icons.pause,
                                        size: 25.sp,
                                      ),
                                    ),
                                    Container(
                                      width: 200.w,
                                      child: Slider(
                                          label: value.toInt().toString(),
                                          divisions: 100,
                                          max: 100,
                                          value: value,
                                          onChanged: (e) {
                                            setState(() {
                                              value = e;
                                            });
                                          }),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 45.h),
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Name.gre,
                  ),
                  height: 66.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w, left: 15.w),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          size: 30.sp,
                          color: Name.black,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "  Напишите письмо ...",
                                hintStyle: TextStyle(fontSize: 14.sp),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Icon(
                          Icons.mic,
                          size: 27.sp,
                          color: Name.black,
                        )
                      ],
                    ),
                  ),
                ),
                // BottomNavigationBar(
                //   items: <BottomNavigationBarItem>[
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.home),
                //       label: "aaaaa",
                //     ),
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.home),
                //       label: "bbbb",
                //     ),
                //   ],
                // ),
                
              ],
            ),
          ),

          // Figmadagi iwni dark temaga otkazish kerak Swich orqali
        );
      },
    );
  }
}
