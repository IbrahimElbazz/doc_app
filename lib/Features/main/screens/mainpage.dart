import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Features/cleander/screens/cleander.dart';
import 'package:docdoc/Features/home/screens/home.dart';
import 'package:docdoc/Features/messages/screens/message.dart';
import 'package:docdoc/Features/more/screens/more.dart';
import 'package:docdoc/Features/search/screens/search.dart';
import 'package:docdoc/classprovider/pagesroutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pagelists = [
    Homepage(),
    Messagepage(),
    SearchPage(),
    Cleanderpage(),
    Morepage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangePages>(builder: (context, pageindex, child) {
      return Scaffold(
        body: pagelists[pageindex.pageIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 30),
          child: FloatingActionButton(
            onPressed: () {
              pageindex.pageIndex = 2;
            },
            backgroundColor: pageindex.pageIndex == 2
                ? Color(0xff216FE2)
                : Color(0xff257cff),
            child: SvgPicture.asset(
              "assets/svgs/search-normal.svg",
              width: 40.w,
              height: 30.h,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          //   shape: CircularNotchedRectangle(),
          // notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: InkWell(
                    onTap: () {
                      pageindex.pageIndex = 0;
                    },
                    child: SvgPicture.asset(
                      pageindex.pageIndex == 0
                          ? "assets/svgs/homeblue.svg"
                          : "assets/svgs/home-2.svg",
                      width: 34.w,
                      height: 34.h,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    pageindex.pageIndex = 1;
                  },
                  child: SvgPicture.asset(
                    pageindex.pageIndex == 1
                        ? "assets/svgs/messageblue.svg"
                        : "assets/svgs/message-text.svg",
                    width: 34,
                    height: 34,
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    pageindex.pageIndex = 3;
                  },
                  child: Image.asset(
                    "assets/images/settings.png",
                    color:
                        pageindex.pageIndex == 3 ? Colors.blue : Colors.black,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () {
                    pageindex.pageIndex = 4;
                  },
                  child: Image.asset(
                    "assets/images/more.png",
                    color:
                        pageindex.pageIndex == 4 ? Colors.blue : Colors.black,
                    width: 34.w,
                    height: 34.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
