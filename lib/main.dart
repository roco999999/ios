import 'package:flutter/material.dart';

void main() => runApp(EveryOneApp());

class EveryOneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EveryOne',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Get Closer To EveryOne'),
            ElevatedButton(
              child: Text('Get Started'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello, Welcome Back'),
            TextField(
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            Text('Or Login with'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.account_circle),
                Icon(Icons.apple),
                Icon(Icons.facebook),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EveryOne')),
      body: ListView(
        children: <Widget>[
          ListTile(
              title: Text('Robert Fox'),
              subtitle: Text('Hey, let\'s play basketball')),
          ListTile(
              title: Text('Esther Howard'),
              subtitle: Text('Perfect, see you later')),
          // Diğer sohbetler buraya eklenebilir
        ],
      ),
    );
  }
}

// ChatScreen widget'ını buraya ekleyebilirsiniz.
