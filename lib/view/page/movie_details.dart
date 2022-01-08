import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({Key? key, this.movie}) : super(key: key);

  final Movie? movie;

  @override
  State<StatefulWidget> createState() {
    return _MovieDetailsState();
  }
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${widget.movie!.title}")),
    );
  }
}
