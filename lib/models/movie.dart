class Movie {
  String? title;
  String? description;
  String? img;
  List<String>? genre;
  int? year;
  String? duration;
  int? stars;

  Movie(
      {this.title,
      this.img,
      this.description,
      this.duration,
      this.genre,
      this.stars,
      this.year});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["title"],
        description: json["description"],
        img: json["image"],
        genre: json["genre"],
        year: json["year"],
        duration: json["duration"],
        stars: json["starts"]);
  }

  static List<Movie> allMoviesSample() {
    List<Movie> items = [];

    items.add(Movie(
        title: "Spiderman",
        description: "Spiderman description",
        genre: ["action"],
        year: 2021,
        duration: "2h 30 min",
        stars: 4,
        img: "spiderman.jpg"));
    items.add(Movie(
        title: "After",
        description: "After description",
        img: "after.jpg",
        genre: ["drama", "action"],
        year: 2021,
        duration: "1h 20 min",
        stars: 3));
    items.add(Movie(
        title: "Avengers",
        description: "Avengers description",
        genre: ["action"],
        img: "avenger.jpg",
        year: 2022,
        duration: "2h 21 min",
        stars: 5));
    items.add(Movie(
        title: "US",
        img: "us.jpg",
        description: "Us description",
        genre: ["drama"],
        year: 2021,
        duration: "2h 15 min",
        stars: 4));
    items.add(Movie(
        title: "Freedom",
        img: "freedom.jpg",
        description: "freedom description",
        genre: ["action", "drama"],
        year: 2021,
        duration: "2h 30 min",
        stars: 5));
    items.add(Movie(
        title: "Black Panther",
        description: "Black panther description",
        genre: ["action"],
        img: "blackpanther.jpg",
        year: 2018,
        duration: "1h 45 min",
        stars: 5));

    return items;
  }
}
