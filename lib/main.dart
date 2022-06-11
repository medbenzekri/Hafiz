import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(quran.getSurahName(18)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Wrap(
              
              children: [ for (var i = 0; i < quran.getVerseCount(18); i++) {
                 Text(quran.getVerse(18, i + 1, verseEndSymbol: true)
              }

              ],
            ),
            // child: ListView.builder(
            //   //scrollDirection: Axis.horizontal,
            //   itemCount: quran.getVerseCount(18),
            //   itemBuilder: (context, index) {
            //     return Text(
            //       quran.getVerse(18, index + 1, verseEndSymbol: true),
            //       textAlign: TextAlign.right,
            //     );
            //   },
            // ),
          ),
        ),
      ),
    ),
  );
}

class Surah extends StatefulWidget {
  const Surah({ Key? key }) : super(key: key);
  String surah_name;
  String surah_number;
  List surah_verses;
  @override
  _SurahState createState() => _SurahState();
}

class _SurahState extends State<Surah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}