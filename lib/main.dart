import 'package:flutter/material.dart';

// Nama: Prisma Putra
// NIM: 123190048
// Kelas: Praktikum TPM-B

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas1 FLutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(0, 160, 0, 90),
                  alignment: Alignment.center,
                  child: FlutterLogo()),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                width: 330.0,
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      hintText: 'Email'),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null) ? 'Enter Email' : null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                width: 330.0,
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      hintText: 'Password'),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null) ? 'Enter Password' : null;
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: 330.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Login'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black45,
                ),
                child: Text('Forgot Password?'),
              ),
            ]),
      ),
    );
  }
}
