import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({Key? key, this.movie}) : super(key: key);

  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0, right: 10, bottom: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                "assets/${movie!.img}",
                fit: BoxFit.cover,
                width: 140,
              ),
            ),
          ),
          Text(
            "${movie!.title}",
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
          Text(
            "${movie!.year}",
            style: const TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
