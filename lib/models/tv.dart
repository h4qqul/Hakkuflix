class TV {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  String language;
  double voteAverage;

  TV({
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.language,
    required this.voteAverage,
  });

  factory TV.fromJson(Map<String, dynamic> json) {
    return TV(
      title: json["name"],
      backDropPath: json["backdrop_path"],
      originalTitle: json["original_name"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["first_air_date"],
      language: json["original_language"],
      voteAverage: json["vote_average"].toDouble(),
    );
  }
}
