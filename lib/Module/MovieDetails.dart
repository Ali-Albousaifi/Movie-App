
class Details
{
  String backdrop_path,title,overview,release_date;
  int vote_count;
   

  Details({this.backdrop_path,this.vote_count,this.title,this.release_date,this.overview});
}

class SimilarMovies
{
  String title,poster_path;

SimilarMovies({this.title,this.poster_path});
}