import 'package:flutter/material.dart';
import 'package:flutter_map_searching_app/home_view_model.dart';
import 'package:flutter_map_searching_app/widget/appbar_textfield.dart';
import 'package:flutter_map_searching_app/widget/detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeViewModel);
    @override
    dispose() {
      controller.dispose();
      super.dispose();
    }

    void searchLocation(String text) {
      final vm = ref.read(homeViewModel.notifier);
      vm.searchLocation(text);
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 50,
            child: TextField(
              controller: controller,
              onSubmitted: searchLocation,
              decoration: InputDecoration(
                  hintText: '지역을 입력해주세요.',
                  border: MaterialStateOutlineInputBorder.resolveWith(
                    (states) {
                      return const OutlineInputBorder();
                    },
                  )),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
            itemCount: state.length,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20);
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
        ),
      ),
    );
  }
}
