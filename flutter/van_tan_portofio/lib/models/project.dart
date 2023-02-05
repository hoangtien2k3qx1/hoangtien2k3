
class Project {
  String title = "";
  String description = "";
  String banner = "";
  String logo = "";
  var projectLink = [];

  Project(
      {required this.title,
      required this.description,
      required this.banner,
      required this.logo,
      required this.projectLink});
}

class Link {
  String title;
  String link;
  String icon;
  Link({required this.title, required this.icon, required this.link});
}

