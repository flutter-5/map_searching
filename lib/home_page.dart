import 'package:flutter/material.dart';
import 'package:flutter_map_searching_app/widget/appbar_textfield.dart';
import 'package:flutter_map_searching_app/widget/home_list_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final controller = TextEditingController();
  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppbarTextfield(controller),
        body: HomeListView(controller),
      ),
    );
  }
}
