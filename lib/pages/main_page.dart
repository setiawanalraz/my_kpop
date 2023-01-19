import 'package:flutter/material.dart';
import '../style/style.dart';
import '../widget/my_appbar.dart';
import '../widget/my_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: MyAppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg_home.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: const Image(
                  image: AssetImage('assets/image/my_logo.png'),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                padding: const EdgeInsets.all(10),
                color: Colors.black54,
                child: Text(
                  'Selamat Datang Di Aplikasi MyK-POP, Sebuah Aplikasi Berita Musik K-POP Yang Masih Sangat Sederhana. Aplikasi Ini Dibuat Untuk Memenuhi Tugas Project Mata Kuliah Mobile Programming.',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: welcomeMsg,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
