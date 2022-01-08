import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({Key? key, this.url, this.title, this.year})
      : super(key: key);

  final String? url;
  final String? title;
  final int? year;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              "assets/spiderman.jpg",
              fit: BoxFit.fill,
              width: 140,
            ),
          ),
          Text(
            "$title",
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
          Text(
            "$year",
            style: const TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
