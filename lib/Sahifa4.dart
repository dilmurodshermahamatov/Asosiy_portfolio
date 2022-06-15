import 'package:b01/Home.dart';
import 'package:b01/Malumotlar.dart';
import 'package:b01/Sahifa5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sahifa4 extends StatefulWidget {
  int? text;
  int? index;
  Sahifa4(this.text, this.index);

  @override
  State<Sahifa4> createState() => _Sahifa4State();
}

class _Sahifa4State extends State<Sahifa4> {
  Color _rang = Colors.white;
  Color _text = Colors.grey;
  Color _col = Colors.blue;
  Color _white = Colors.white;
  Color _gey = Colors.grey;
  Color blac = Colors.black;
  int on = 7;
  List<bool> rangindex = List.generate(7, (i) => false);
  List<bool> textindex = List.generate(7, (i) => false);
  //
  List<bool> vaqtindex = List.generate(5, (i) => false);
  List<bool> textColor = List.generate(5, (i) => false);
  //
  List<bool> vaqtindex2 = List.generate(5, (i) => false);
  List<bool> textColor2 = List.generate(5, (i) => false);
  //
  List<bool> vaqtindex3 = List.generate(5, (i) => false);
  List<bool> textColor3 = List.generate(5, (i) => false);

  String value1 = "24 - 28";
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  "Записаться",
                  style: TextStyle(color: Name.black),
                ),
              ),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Name.white,
              leading: Container(
                margin: EdgeInsets.only(left: 13.w, top: 15.h),
                width: 40.0.w,
                height: 40.0.h,
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
            ),
            backgroundColor: Name.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Row(
                    children: [
                      Text(
                        "Декабрь, 2021",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Name.black,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 30.sp,
                        color: Name.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rangindex.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!rangindex[index]) {
                                rangindex = List.generate(7, (i) => false);
                                textindex = List.generate(7, (i) => false);
                                rangindex[index] = true;
                                textindex[index] = true;
                              } else {
                                rangindex[index] = false;
                                textindex[index] = false;
                              }
                            });
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0.h),
                                  child: Text(
                                    Malumot.sana[index],
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      color: textindex[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 18.h),
                                  child: Text(
                                    Malumot.hafta[index],
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: textindex[index]
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(
                                right: 10.w, top: 15.h, bottom: 15.h),
                            width: 80.0.w,
                            height: MediaQuery.of(context).size.height * 0.15.h,
                            decoration: BoxDecoration(
                              color:
                                  rangindex[index] ? Colors.blue : Colors.white,
                              border: Border.all(
                                  color: Color.fromRGBO(211, 211, 211, 0.702),
                                  width: 1),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        );
                      })),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Text(
                    "Доступные чсы",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Name.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08.h,
                  margin: EdgeInsets.only(top: 20.h),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!vaqtindex[index]) {
                              vaqtindex = List.generate(5, (index) => false);
                              vaqtindex[index] = true;
                              textColor = List.generate(5, (index) => false);
                              textColor[index] = true;
                            } else {
                              vaqtindex[index] = false;
                              textColor[index] = false;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                vaqtindex[index] ? Colors.blue : Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(211, 211, 211, 0.702),
                                width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          width: 90.0.w,
                          height: 30.h,
                          margin: EdgeInsets.all(5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                Malumot.vaqt[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: textColor[index]
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                //
                Container(
                  height: MediaQuery.of(context).size.height * 0.08.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            if (!vaqtindex2[index]) {
                              vaqtindex2 = List.generate(5, (index) => false);
                              vaqtindex2[index] = true;
                              textColor2 = List.generate(5, (index) => false);
                              textColor2[index] = true;
                            } else {
                              vaqtindex2[index] = false;
                              textColor2[index] = false;
                            }
                          });
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                vaqtindex2[index] ? Colors.blue : Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(211, 211, 211, 0.702),
                                width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          width: 90.0.w,
                          height: 30.h,
                          margin: EdgeInsets.all(5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                Malumot.vaqt2[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: textColor2[index]
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                //
                Container(
                  height: MediaQuery.of(context).size.height * 0.08.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!vaqtindex3[index]) {
                              vaqtindex3 = List.generate(5, (index) => false);
                              vaqtindex3[index] = true;
                              textColor3 = List.generate(5, (index) => false);
                              textColor3[index] = true;
                            } else {
                              vaqtindex3[index] = false;
                              textColor3[index] = false;
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                vaqtindex3[index] ? Colors.blue : Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(211, 211, 211, 0.702),
                                width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          width: 90.0.w,
                          height: 30.h,
                          margin: EdgeInsets.all(5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                Malumot.vaqt3[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: textColor3[index]
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 5.w),
                  child: Text(
                    "Информация о пациенте",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Name.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 5.w),
                  child: Text(
                    "ФИО",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding: EdgeInsets.only(left: 20.w),
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Name.gre,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Ismingizni kiriting',
                      labelStyle:
                          TextStyle(letterSpacing: 1, color: Name.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 5.w),
                  child: Text(
                    "Возраст",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(106, 106, 106, 1)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  decoration: BoxDecoration(
                    color: Name.gre,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: ExpansionTile(
                    title: Text(value1),
                    children: [
                      DropdownButton(
                          value: value1,
                          items: <String>['20 - 24', '24 - 28', '28 - 32', '32 - 36']
                              .map<DropdownMenuItem<String>>((String uzunlik) {
                            return DropdownMenuItem<String>(
                              value: uzunlik,
                              child: Text(uzunlik),
                            );
                          }).toList(),
                          onChanged: (String? e) {
                            setState(() {
                              value1 = e!;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 5.w),
                  child: Text(
                    "Пол",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Name.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_col == Colors.blue) {
                            _col = Colors.white;
                            _white = Colors.blue;
                          } else {
                            _col = Colors.blue;
                            _white = Colors.white;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.h),
                        width: 100.0.w,
                        height: MediaQuery.of(context).size.height * 0.062.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: _col,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "Мужчина",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                          if (_white == Colors.white) {
                            _col = Colors.white;
                            _white = Colors.blue;
                          } else {
                            _col = Colors.blue;
                            _white = Colors.white;
                          }
                        });
                      }),
                      child: Container(
                        margin: EdgeInsets.only(top: 10.h, left: 20.w),
                        width: 100.0.w,
                        height: MediaQuery.of(context).size.height * 0.062.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: _white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "Женщина",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Text(
                    "Напишите о проблеме",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  padding: EdgeInsets.only(left: 10.w),
                  height: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Name.gre,
                  ),
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Enter your username',
                      labelStyle:
                          TextStyle(letterSpacing: 1, color: Name.black),
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
                              Sahifa5(widget.text, widget.index)),
                        ),
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 40.h, bottom: 10.h),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 104, 225, 1),
                        borderRadius: BorderRadius.circular(20)),
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
              ]),
            ),
          );
        });
  }
}
