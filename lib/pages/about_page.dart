import 'package:flutter/material.dart';
import '../style/style.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[400],
        title: Text(
          'MyK-POP',
          style: titleBar,
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg_about.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              padding: const EdgeInsets.all(5),
              color: Colors.black26,
              child: Center(
                child: Text(
                  'MyK-POP Merupakan Sebuah Aplikasi Berita Musik K-POP Berbasis Android',
                  textAlign: TextAlign.center,
                  style: title,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.50,
                  padding: const EdgeInsets.all(5),
                  color: Colors.black26,
                  child: Text(
                    "Nama Anggota : \n1) Alaraz Wari Setiawan - 12192426 \n2) Muhammad Zulfan Khatami - 12191953 \n3) Putri Rachmanita - 12191919 \n4) Erni Rachmawati - 12192056 \n5) Nurwulandari - 12191380 \n\nCredits : \n1) Bapak Ade Christian, M.Kom (Dosen Mobile \nProgramming)\n2) Youtube Channel, \"Erico Darmawan Handoyo\" \n3) \"liputan6.com\", \"cirebon.pikiran-rakyat.com\", \n\"depok.pikiran-rakyat.com\", dan \"kompas.com\".",
                    style: nameList,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.10,
              padding: const EdgeInsets.all(5),
              color: Colors.black26,
              child: Center(
                child: Text(
                  'Copyright By Kelompok 5 | UBSI Bogor.',
                  textAlign: TextAlign.center,
                  style: title,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
