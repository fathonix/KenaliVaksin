import 'package:flutter/material.dart';
import 'package:kenali_vaksin/screens/about_screen.dart';
import 'package:kenali_vaksin/screens/search_screen.dart';
import 'package:kenali_vaksin/shared/custom_page_route.dart';
import 'package:kenali_vaksin/shared/item_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'KenaliVaksin',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Pacifico',
          ),
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.of(context).push(CustomPageRoute(const AboutScreen()));
            }),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(CustomPageRoute(const SearchScreen()));
            },
          )
        ],
      ),
      body: itemList(context: context),
    );
  }
}
