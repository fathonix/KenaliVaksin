import 'package:flutter/material.dart';
import 'package:kenali_vaksin/screens/detail_screen.dart';
import 'package:kenali_vaksin/shared/custom_page_route.dart';
import 'package:kenali_vaksin/shared/vaccines.dart';

Widget itemList({required BuildContext context, List<Vaccine>? listVaccine}) {
  listVaccine ??= vaccineLists;
  const listBorderRadius = 15.0;

  return ListView.builder(
      itemCount: listVaccine.length,
      itemBuilder: (context, index) {
        final Vaccine vaccine = listVaccine![index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.all(Radius.circular(listBorderRadius)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(CustomPageRoute(DetailScreen(vaccine: vaccine)));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(listBorderRadius),
                      bottomLeft: Radius.circular(listBorderRadius),
                    ),
                    child: Hero(
                      tag: vaccine.name,
                      child: Image.asset(
                        vaccine.imageAsset,
                        height: 150,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            vaccine.name,
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            vaccine.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
