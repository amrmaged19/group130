
class Category {
  final String name ;
  final String image ;
  const Category({required this.name, required this.image});

}
List<Category> news = [
  Category(name: "General", image: "https://images.pexels.com/photos/4057663/pexels-photo-4057663.jpeg"),
  Category(name: "Sport", image: "https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg"),
  Category(name: "Health", image: "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg"),
  Category(name: "Business", image: "https://images.pexels.com/photos/669610/pexels-photo-669610.jpeg"),

];
main(){
  Category x = news[0];
}