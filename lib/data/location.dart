class Location {
  String title;
  String link;
  String category;
  String description;
  String telephone;
  String address;
  String roadAddress;
  String mapx;
  String mapy;

  Location({
    required this.address,
    required this.category,
    required this.description,
    required this.link,
    required this.mapx,
    required this.mapy,
    required this.roadAddress,
    required this.telephone,
    required this.title,
  });

  Location.fromJson(Map<String, dynamic> map)
      : this(
          title: map['title'],
          link: map['link'],
          category: map['category'],
          description: map['description'],
          telephone: map['telephone'],
          address: map['address'],
          roadAddress: map['roadAddress'],
          mapx: map['mapx'],
          mapy: map['mapy'],
        );

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'link': link,
      'category': category,
      'description': description,
      'telephone': telephone,
      'address': address,
      'roadAddress': roadAddress,
      'mapx': mapx,
      'mapy': mapy,
    };
  }
}
