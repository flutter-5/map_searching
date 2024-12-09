//1.state 클래스만들기 List<Location>

//2.뷰모델 만들기
import 'package:flutter_map_searching_app/data/location.dart';
import 'package:flutter_map_searching_app/data/location_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends Notifier<List<Location>> {
  @override
  List<Location> build() {
    return [];
  }

  final locationRepository = LocationRepository();
  Future<void> searchLocation(String text) async {
    final getLocation = await locationRepository.searchLocation(text);
    state = getLocation ?? [];
  }
}

//3.뷰모델 관리자 만들기
final homeViewModel = NotifierProvider<HomeViewModel, List<Location>>(() {
  return HomeViewModel();
});
