import 'package:exercise_paml/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Pokédex.',
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 50),
          ),
          Container(padding: EdgeInsets.all(20)),
          const Text(
            'Welcome to Pokédex \n You can find your favorite pokemon here',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          Container(padding: EdgeInsets.all(65)),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Pok%C3%A9_Ball_icon.svg/1200px-Pok%C3%A9_Ball_icon.svg.png',
            width: 200,
            height: 200,
          ),
          Container(padding: EdgeInsets.all(65)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
            ),
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      )),
    );
  }
}
