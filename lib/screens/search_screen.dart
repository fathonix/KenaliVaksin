import 'package:flutter/material.dart';
import 'package:kenali_vaksin/shared/item_list.dart';
import 'package:kenali_vaksin/shared/vaccines.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Vaccine> foundItems = [];

  void onSearch(String keyword) {
    final String trimmedKeyword = keyword.trim();
    if (trimmedKeyword.isNotEmpty) {
      List<Vaccine> dummyFoundItems = [];
      for (var item in vaccineLists) {
        if (item.name.toLowerCase().contains(trimmedKeyword.toLowerCase())) {
          dummyFoundItems.add(item);
        }
      }
      setState(() {
        foundItems.clear();
        foundItems.addAll(dummyFoundItems);
      });
    } else {
      setState(() => foundItems.clear());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: double.infinity,
          height: 40,
          child: TextField(
              textAlignVertical: TextAlignVertical.top,
              style: const TextStyle(fontSize: 20.0),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                )),
              ),
              onChanged: (value) {
                onSearch(value);
              }),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: foundItems.isNotEmpty
          ? itemList(
              context: context,
              listVaccine: foundItems,
            )
          : Center(
              child: Text(
                'Cari vaksin...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 16,
                ),
              ),
            ),
    );
  }
}
