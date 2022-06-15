import 'package:b01/Home.dart';
import 'package:b01/Malumotlar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sahifa2 extends StatefulWidget {
  @override
  State<Sahifa2> createState() => _Sahifa2State();
}

class _Sahifa2State extends State<Sahifa2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Name.white,
              leading: Container(
                margin: EdgeInsets.only(top: 10.h, left: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Color.fromRGBO(221, 220, 220, 0.702),
                  ),
                ),
                width: 40.w,
                height: 40.h,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Name.black,
                      size: 30.sp,
                    )),
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Text(
                  "Докторы",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500,
                      color: Name.black),
                  textAlign: TextAlign.center,
                ),
              ),
              centerTitle: true,
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 13.w, top: 13.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: Color.fromARGB(179, 221, 220, 220),
                    ),
                  ),
                  width: 40.w,
                  height: 40.h,
                  child: Image.asset(
                    "assets/icon/iconss.png",
                    color: Name.black,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
              ],
            ),
            backgroundColor: Name.white,
            body: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 10.h, bottom: 15.h),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      labelText: "Поиск доктора",
                      labelStyle: TextStyle(color: Name.black),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Icon(
                          Icons.search,
                          size: 30.sp,
                          color: Name.black,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(233, 234, 235, 1),
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 470.h,
                  width: double.infinity,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.9.w),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/Sahifa3/$index");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20.r,
                                  spreadRadius: 1.r,
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ],
                              color: Name.con,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 15.h,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0.h),
                                  child: Image.asset(
                                    Malumot.img[index],
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    Malumot.ism[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp,
                                        color: Name.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0.w),
                                  child: Text(
                                    Malumot.kasb[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: Name.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: Text(
                                    Malumot.box[index],
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Name.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
