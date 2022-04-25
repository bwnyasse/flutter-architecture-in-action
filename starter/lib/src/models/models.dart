import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("Jobs"),
    NavigationItem("Favorites"),
  ];
}

@freezed
class Favorite with _$Favorite {

  const factory Favorite({
    required String position,
    required String company,
    required String status,
    required String price,
    required String logo,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, Object?> json) => _$FavoriteFromJson(json);
}

/*List<Favorite> getFavorites() {
  return <Favorite>[
    const Favorite("Flutter UI / UX Designer", "Nike Inc.", "Delivered", "40", "assets/images/nike.png"),
    const Favorite("Product Designer", "Google LLC", "Opened", "60", "assets/images/google.png"),
    const Favorite("UI / UX Designer", "Uber Technologies Inc.", "Cancelled", "55", "assets/images/uber.png"),
    const Favorite("Lead UI / UX Designer", "Apple Inc.", "Delivered", "80", "assets/images/apple.png"),
    const Favorite("Flutter UI Designer", "Amazon Inc.", "Not selected", "60", "assets/images/amazon.jpg"),
  ];
}*/

@freezed
class Job with _$Job {

  const factory Job({
    required String id,
    required String url,
    required String title,
    required String company,
    required String logo,
    required String category,
    required String type,
    required String publication,
    required String location,
    required String salary,
    required String description,
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}

List<Job> getJobs() {
  return <Job>[];
}

List<String> getJobsRequirements() {
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}
