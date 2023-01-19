import 'package:flutter/material.dart';
import '../style/style.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purpleAccent[400],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent[400],
          title: Text(
            'MyK-POP',
            style: titleBar,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ),
              );
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purpleAccent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purpleAccent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purpleAccent, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purpleAccent, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purpleAccent, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.purpleAccent[400],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
