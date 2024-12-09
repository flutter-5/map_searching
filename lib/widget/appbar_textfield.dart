import 'package:flutter/material.dart';
import 'package:flutter_map_searching_app/home_page.dart';
import 'package:flutter_map_searching_app/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppbarTextfield extends StatefulWidget implements PreferredSizeWidget {
  TextEditingController controller;
  AppbarTextfield(this.controller, {super.key});

  // @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppbarTextfield> createState() => _AppbarTextfieldState();
}

class _AppbarTextfieldState extends State<AppbarTextfield> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.read(homeViewModel.notifier);
      return AppBar(
        title: SizedBox(
          height: 50,
          child: TextField(
            controller: widget.controller,
            onSubmitted: vm.searchLocation,
            decoration: InputDecoration(
                hintText: '지역을 입력해주세요.',
                border: MaterialStateOutlineInputBorder.resolveWith(
                  (states) {
                    return const OutlineInputBorder();
                  },
                )),
          ),
        ),
      );
    });
  }
}
