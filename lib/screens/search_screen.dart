import 'package:flutter/material.dart';
import 'package:kenali_vaksin/shared/item_list.dart';
import 'package:kenali_vaksin/shared/vaccines.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _trimmedKeyword = '';
  final List<Vaccine> _foundItems = [];

  void _onSearch() {
    if (_trimmedKeyword.isNotEmpty) {
      List<Vaccine> _dummyFoundItems = [];
      for (var item in vaccineLists) {
        if (item.name.toLowerCase().contains(_trimmedKeyword)) {
          _dummyFoundItems.add(item);
        }
      }
      setState(() {
        _foundItems.clear();
        _foundItems.addAll(_dummyFoundItems);
      });
    } else {
      setState(() => _foundItems.clear());
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
                _trimmedKeyword = value.trim().toLowerCase();
                _onSearch();
              }),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: (_foundItems.isNotEmpty)
          ? itemList(
              context: context,
              listVaccine: _foundItems,
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
