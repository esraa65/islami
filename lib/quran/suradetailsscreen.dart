import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/main.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routename = 'sura_details';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetaildargs;
    Loadsuradetails(args.suraindex);
    return Stack(children: [
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
          title: Text('${args.suraname}',
              style: TextStyle(color: Mythemedata.blackcolor)),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(19)),
            child: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemBuilder: (buildContext, index) {
                      return Text(
                        verses[index] + '{${index + 1}}',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      );
                    },
                    itemCount: verses.length,
                  )),
      )
    ]);
  }

  void Loadsuradetails(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = filecontent.split('\n');
    this.verses = ayat;
    setState(() {});
  }
}

class SuraDetaildargs {
  String suraname;
  int suraindex;

  SuraDetaildargs(this.suraname, this.suraindex);
}
