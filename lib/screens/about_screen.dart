import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang KenaliVaksin',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(55.0),
              child: Image.asset('images/logo.png')),
          const Text('KenaliVaksin',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 45, fontFamily: 'Pacifico')),
          const SizedBox(height: 6.0),
          Text(
            '© ${DateTime.now().year} Aldo Adirajasa Fathoni',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6.0),
          InkWell(
            child: const Text(
              'github.com/fathonix',
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
            onTap: () => launch('https://github.com/fathonix'),
          ),
        ],
      ),
    );
  }
}
