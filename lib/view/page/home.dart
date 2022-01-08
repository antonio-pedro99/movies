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
          direction: Axis.horizontal,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Container(
              padding: const EdgeInsets.only(left: 2, right: 2),
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
                    movie: movies[index],
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
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "TV Shows",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
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
                    movie: movies[index],
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

  Widget buildLatestMovies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Latest",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
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
                    movie: movies[index],
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

  Widget buildTrending() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Trending",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Container(
              //padding: const EdgeInsets.all(2),
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
                return GestureDetector(
                  child: MovieTile(
                    movie: movies[index],
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
              padding: EdgeInsets.zero,
              child: buildPopularMovies(),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.zero,
              child: buildTVShow(),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.zero,
              child: buildTrending(),
            )
          ],
        ),
      ),
    );
  }
}
