
class Category {
  final String name;
  final int numberOfCourses;
  final String image;

  Category(this.name,this.numberOfCourses,this.image,);
}

List<Category> categories = categoriesData
    .map((item) => Category(
          item['name'],
          item['numberOfCourses'],
          item['image'],
        ))
    .toList();

    var categoriesData = [
      {'name':'Marketing','numberOfCourses':15,'image':'assets/images/marketing.png'},
      {'name': 'UX Design', 'numberOfCourses': 25, 'image': 'assets/images/ux_design.png'},
      {'name': 'Photography', 'numberOfCourses': 13, 'image': 'assets/images/photography.png'},
      {'name': 'Business', 'numberOfCourses': 20, 'image': 'assets/images/business.png'},
    ];
