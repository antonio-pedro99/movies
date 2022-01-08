import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/view/page/movie_details.dart';
import 'package:movies/view/tiles/movie_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Movie> movies = Movie.allMoviesSample();

  Widget buildPopularMovies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: [
            const Text(
              "Popular",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Text(
                "TV Show",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: const Text(
                "Movies",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 270,
          child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: MovieTile(
                    title: movies[index].title,
                    url: movies[index].img,
                    year: movies[index].year,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MovieDetails(movie: movies[index]);
                    }));
                  },
                );
              }),
        )
      ],
    );
  }

  Widget buildTVShow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "TV Show",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 270,
          child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MovieTile(
                  title: movies[index].title,
                  url: movies[index].img,
                  year: movies[index].year,
                );
              }),
        )
      ],
    );
  }

  Widget buildLatestMovies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "Latest Movies",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 270,
          child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MovieTile(
                  title: movies[index].title,
                  url: movies[index].img,
                  year: movies[index].year,
                );
              }),
        )
      ],
    );
  }

  Widget buildTrending() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: [
            const Text(
              "Trending",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: const Text(
                "TV Show",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Text(
                "Movies",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 270,
          child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MovieTile(
                  title: movies[index].title,
                  url: movies[index].img,
                  year: movies[index].year,
                );
              }),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Movie",
                          style: TextStyle(fontSize: 34, color: Colors.white),
                        ),
                        Text(
                          "On",
                          style: TextStyle(fontSize: 34, color: Colors.red),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 34,
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10),
              child: buildPopularMovies(),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10),
              child: buildTVShow(),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10),
              child: buildTrending(),
            )
          ],
        ),
      ),
    );
  }
}
