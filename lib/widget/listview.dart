import 'package:flutter/material.dart';
import 'package:flutter_map_searching_app/home_page.dart';
import 'package:flutter_map_searching_app/home_view_model.dart';
import 'package:flutter_map_searching_app/widget/detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Listview extends StatelessWidget {
  TextEditingController controller;
  Listview(this.controller);
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(homeViewModel);
      final vm = ref.read(homeViewModel.notifier);
      final homepage = HomePage();
      return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: state.length,
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                vm.searchLocation(controller.text);
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Detail(state[index]);
                  }));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(state[index].category),
                        Text(state[index].address),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.transparent,
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
