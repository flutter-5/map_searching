// "items": [
//     {
//       "title": "삼성카드",
//       "link": "",
//       "category": "금융,보험>신용카드",
//       "description": "",
//       "telephone": "",
//       "address": "서울특별시 중구 태평로2가 250",
//       "roadAddress": "서울특별시 중구 세종대로 67 삼성본관빌딩",
//       "mapx": "1269754184",
//       "mapy": "375624251"
//     }
//   ]
//https://developers.naver.com/docs/serviceapi/search/local/local.md#%EC%A7%80%EC%97%AD
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
