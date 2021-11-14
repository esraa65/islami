import 'package:flutter/material.dart';
import 'package:untitled/hadeth/sebhatab.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/quarntab.dart';
import 'package:untitled/radio/radiotab.dart';
import 'package:untitled/sebha/sebhatab.dart';

class Homepage extends StatefulWidget {
  static const String routename = 'home';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title:
                Text('islami', style: TextStyle(color: Mythemedata.blackcolor)),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Mythemedata.primarycolor),
            child: BottomNavigationBar(
              onTap: (index) {
                currentpage = index;
                setState(() {});
              },
              currentIndex: currentpage,
              backgroundColor: Mythemedata.primarycolor,
              selectedItemColor: Mythemedata.selectediconcolor,
              unselectedItemColor: Mythemedata.unselectediconcolor,
              items: [
                BottomNavigationBarItem(
                    label: 'quran',
                    icon: Image.asset(
                      'assets/images/radio.png',
                      width: 35,
                    )),
                BottomNavigationBarItem(
                    label: 'sebha',
                    icon: Image.asset(
                      'assets/images/sebha.png',
                      width: 35,
                    )),
                BottomNavigationBarItem(
                    label: 'ahadeth',
                    icon: Image.asset(
                      'assets/images/quran-quran-svgrepo-com.png',
                      width: 35,
                    )),
                BottomNavigationBarItem(
                    label: 'radio',
                    icon: Image.asset(
                      'assets/images/quran.png',
                      width: 35,
                    )),
              ],
            ),
          ),
          body: Container(child: getCurrentpage()),
        ),
      ],
    );
  }

  Widget getCurrentpage() {
    if (currentpage == 0) {
      return qurantab();
    } else if (currentpage == 1) {
      return Hadethtab();
    } else if (currentpage == 2) {
      return sebhatab();
    } else
      return radiotab();
  }
}
