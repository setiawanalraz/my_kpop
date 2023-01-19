import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/style.dart';
import '../pages/login_page.dart';
import '../pages/news_page.dart';
import '../pages/main_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Kelompok 5 | UBSI Bogor',
                style: username,
              ),
              accountEmail: Text(
                'kelompok5@bsi.ac.id',
                style: email,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/bg_drawable1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.purple,
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Halaman Utama",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ),
                );
              },
            ),
            const Divider(
              height: 2.0,
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.newspaper,
                    color: Colors.pink,
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Berita Utama",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NewsPage();
                    },
                  ),
                );
              },
            ),
            const Divider(
              height: 2.0,
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.logout,
                    color: Colors.blue,
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Keluar",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              onTap: () => confirmLogout(context),
            ),
            const Divider(height: 2.0),
          ],
        ),
      ),
    );
  }

  confirmLogout(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      content: Text(
        "Apakah anda yakin ingin keluar?",
        style: confirmDialog,
      ),
      actions: [
        //tombol konfirmasi
        Builder(
          builder: (context) {
            return ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const Text("Ya"),
            );
          },
        ),
        //tombol batal
        Builder(
          builder: (context) {
            return ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () => Navigator.pop(context),
              child: const Text("Tidak"),
            );
          },
        ),
      ],
    );

    showDialog(context: (context), builder: (_) => alertDialog);
  }
}
