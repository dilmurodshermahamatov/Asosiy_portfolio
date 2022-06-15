import 'package:b01/Sahifa2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class Name {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color gre = Color.fromRGBO(214, 213, 213, 1);
  static Color con = Colors.white;
}

class _HomePageState extends State<HomePage> {
  DateTime _date = DateTime.now();
  bool ob = false;
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
            elevation: 0,
            backgroundColor: Name.white,
            title: Container(
              margin: EdgeInsets.only(top: 10.h, left: 10.w),
              child: Text(
                "Привет",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: Name.black,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      showDatePicker(
                          context: context,
                          initialDate: _date,
                          firstDate: DateTime(2015, DateTime.january),
                          lastDate: DateTime(2035, DateTime.december));
                    });
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(right: 10.w, top: 14.h, bottom: 5.h),
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Color.fromARGB(255, 218, 214, 214)),
                    ),
                    child: Image.asset(
                      "assets/icon/kalen.png",
                      color: Name.black,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 0.w, top: 10.h),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Switch(
                  mouseCursor: MouseCursor.uncontrolled,
                  value: ob,
                  onChanged: (e) {
                    setState(() {
                      ob = e;
                      if (ob == true) {
                        Name.white = Colors.black;
                        Name.black = Colors.white;
                        Name.con = Color.fromARGB(255, 27, 27, 27);
                        Name.gre = Color.fromARGB(255, 27, 27, 27);
                      } else {
                        Name.white = Colors.white;
                        Name.black = Colors.black;
                        Name.con = Colors.white;
                        Name.gre = Color.fromRGBO(243, 243, 243, 1);
                      }
                    });
                  },
                ),
              )
            ],
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 9,
                      blurRadius: 17,
                      offset: Offset(2.0, 3.0),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
                height: MediaQuery.of(context).size.height * 0.47.h,
                width: double.infinity.w,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, right: 130.w),
                      child: Text(
                        "Защита от \nCovid-19",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp,
                            color: Name.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 100.w, top: 10.h),
                      child: Text(
                        "Запищитесь онлайн на \nвакцинацию",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Name.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12.h),
                      child: Image.asset(
                        "assets/icon/box.png",
                        fit: BoxFit.fill,
                        width: 280.0.w,
                        height: 152.0.h,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Name.gre,
                ),
                child: ListTile(
                  title: Text(
                    "Нужен доктор ?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                        color: Name.black),
                  ),
                  subtitle: Text(
                    "Найдите подходящих специалистов",
                    style: TextStyle(color: Name.black),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: Name.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    height: 40.h,
                    width: 40.w,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sahifa2()),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Image.asset(
                            'assets/icon/icon2.png',
                            color: Name.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 10.h),
                child: Text(
                  "Специальность ",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Name.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, top: 10.h, bottom: 15.h),
                child: Container(
                  height: 110.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Name.gre,
                                borderRadius: BorderRadius.circular(20.r)),
                            width: 110.w,
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Image.asset(
                                  "assets/icon/ic1.png",
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Неврология",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "2,029 Докторов",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Name.gre,
                                borderRadius: BorderRadius.circular(20.r)),
                            width: 110.w,
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Image.asset("assets/icon/ic2.png"),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Генетика",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "1,870 Докторов",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ]),
                          ),
                          SizedBox(width: 20.w),
                          Container(
                            decoration: BoxDecoration(
                                color: Name.gre,
                                borderRadius: BorderRadius.circular(20.r)),
                            width: 110.w,
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Image.asset("assets/icon/ic3.png"),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Стаматология",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "1,064 Докторов",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Name.gre,
                                borderRadius: BorderRadius.circular(20.r)),
                            width: 110.w,
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Icon(
                                  Icons.group,
                                  color: Color.fromARGB(255, 110, 242, 180),
                                  size: 50.sp,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "фармацефтик",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "3,161 Докторов",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Name.black),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
