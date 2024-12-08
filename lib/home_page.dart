import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: SizedBox(
              height: 50,
              child: Expanded(
                child: TextField(
                  controller: controller,
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
          ),
          body: ListView()),
    );
  }
}
