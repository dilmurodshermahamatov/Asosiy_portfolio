import 'package:b01/Home.dart';
import 'package:b01/Malumotlar.dart';
import 'package:b01/Sahifa4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sahifa3 extends StatefulWidget {
  int? _text;
  int? _intex;
  Sahifa3(this._text, this._intex);
  @override
  State<Sahifa3> createState() => _Sahifa3State();
}

class _Sahifa3State extends State<Sahifa3> {
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
              // flexibleSpace: Padding(padding: EdgeInsets.only(left: 30, right: 30)),
              elevation: 0,
              backgroundColor: Name.white,
              leading: Container(
                margin: EdgeInsets.only(left: 13.w, top: 13.h),
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
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20.w, top: 10.h),
                  child: Icon(
                    Icons.more_vert,
                    color: Name.black,
                    size: 33.sp,
                  ),
                )
              ],
            ),
            body: ListView(
              children: [
                Center(
                  child: Container(
                    width: 120.0.w,
                    height: MediaQuery.of(context).size.height * 0.15.h,
                    child: Image.asset(Malumot.img[widget._intex!]),
                  ),
                ),
                Center(
                  child: Container(
                    width: 160.0.w,
                    height: 25.h,
                    child: Center(
                      child: Text(
                        Malumot.ism[widget._text!],
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Name.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 69.0.w,
                  height: 16.h,
                  child: Center(
                    child: Text(
                      "Невролог",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w, left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30.h),
                        width: 100.0.w,
                        height: MediaQuery.of(context).size.height * 0.19.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Name.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 17,
                              spreadRadius: 1,
                              offset: Offset.zero,
                              color: Color.fromRGBO(215, 215, 215, 0.702),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 50.0.w,
                              height:
                                  MediaQuery.of(context).size.height * 0.1.h,
                              child: Image.asset("assets/icon/pr1.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "1000+",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Text(
                                "Пациентов",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Container(
                        margin: EdgeInsets.only(top: 30.h),
                        width: 100.0.w,
                        height: MediaQuery.of(context).size.height * 0.19.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Name.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 17,
                              spreadRadius: 1,
                              offset: Offset.zero,
                              color: Color.fromRGBO(215, 215, 215, 0.702),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 50.0.w,
                              height:
                                  MediaQuery.of(context).size.height * 0.1.h,
                              child: Image.asset("assets/icon/pr2.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "10 Лет",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Text(
                                "Стаж",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Container(
                        margin: EdgeInsets.only(top: 30.h),
                        width: 100.0.w,
                        height: MediaQuery.of(context).size.height * 0.19.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Name.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 17,
                                spreadRadius: 1,
                                offset: Offset.zero,
                                color: Color.fromRGBO(215, 215, 215, 0.702)),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 50.0.w,
                              height:
                                  MediaQuery.of(context).size.height * 0.1.h,
                              child: Image.asset("assets/icon/pr3.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Text(
                                "Рейтинг",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, top: 30.h),
                      child: Text(
                        "О доктора",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Name.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                  child: Text(
                    "Здесь будет текст Здесь будет текст Здесь будет текст Здесь будет текст фыва ыфвафыв афывафы ваф ываф ываф ываф ываф ываф ывафывафывафы вафыв афывафывафывафыва фывафыва фываф ыва фыва фыва фыва фыва фыва фыва фыва фыва фыа фыва фывафыва",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Name.black),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                  child: Text(
                    "Время работы",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Name.black),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
                  child: Text(
                    "Пн - Пт (08:30 AM - 09:00 PM)",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                  child: Text(
                    "Связаться",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Name.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ListTile(
                    leading: Image.asset("assets/icon/kl1.png"),
                    title: Text(
                      "СМС",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Name.black),
                    ),
                    subtitle: Text(
                      "С помощю встроенного чата",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ListTile(
                    leading: Image.asset("assets/icon/kl2.png"),
                    title: Text(
                      "Аудио вызов",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Name.black),
                    ),
                    subtitle: Text(
                      "Аудио",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ListTile(
                    leading: Image.asset("assets/icon/kl3.png"),
                    title: Text(
                      "Видео вызов",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Name.black),
                    ),
                    subtitle: Text(
                      "Видео",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Sahifa4(widget._text, widget._intex))));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 104, 225, 1),
                        borderRadius: BorderRadius.circular(20)),
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    width: 360.0.w,
                    height: 60.0.h,
                    child: Center(
                        child: Text(
                      "Записаться",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
