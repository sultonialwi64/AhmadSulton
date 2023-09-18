import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(Icons.home,color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.black,)),
        ],
        title: Text('Login',
        style: TextStyle(
          color:Colors.black,
        ),),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(



        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gambar di dalam tampilan login
            Text('Kylian Mbappe Website',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Cursive',
              color: Colors.green,

            ),
            ),
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 10 ),
                  ),
                  child: Image.asset(
                    'img/mbap.jpeg', // Ganti dengan path gambar Anda
                    width: 300, // Lebar gambar
                    height: 300,
                )// Tinggi gambar
            ),
            SizedBox(height: 20), // Jarak antara gambar dan input
            // Input username dan password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                obscureText: true, // Untuk menyembunyikan password
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('forgot password',
                  style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Fantasy',
                  fontSize: 10,

                ),
              ),
            ),
            // Tombol Login
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika autentikasi di sini
                // Misalnya, periksa username dan password
              },
              child: Text('Login'),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Belum punya akun?',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Fantasy',
                  fontSize: 10,


                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
