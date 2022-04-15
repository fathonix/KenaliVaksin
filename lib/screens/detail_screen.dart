import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kenali_vaksin/shared/vaccines.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final Vaccine vaccine;

  const DetailScreen({required this.vaccine, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          snap: true,
          pinned: true,
          floating: true,
          expandedHeight: 300,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(vaccine.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600)),
            background: Hero(
              tag: vaccine.name,
              child: Image.asset(
                vaccine.imageAsset,
                fit: BoxFit.fitWidth,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.srcOver,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(vaccine.description,
                    style: const TextStyle(fontSize: 16.0)),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                  onPressed: () => launch(vaccine.url),
                  child: const Text("Pelajari lebih lanjut",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600)),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
