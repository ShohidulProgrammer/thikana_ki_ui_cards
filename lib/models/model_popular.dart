class PopularModel {
  final int id;
  final String title;
  final String image;

  PopularModel(
    this.id,
    this.title,
    this.image,
  );

  factory PopularModel.fromJson(Map<String, dynamic> json) {
    return PopularModel(
      json['id'] as int ?? 0,
      json['title'] as String ?? 'Unknown',
      json['image'] as String ?? 'Unknown',
    );
  }
}
