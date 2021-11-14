import 'package:flutter/material.dart';
import 'package:untitled/quran/suradetailsscreen.dart';

class SuraNameItem extends StatelessWidget {
  String suraname;
  int suraindex;

  SuraNameItem(this.suraname, this.suraindex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routename,
            arguments: SuraDetaildargs(suraname, suraindex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${suraname}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
