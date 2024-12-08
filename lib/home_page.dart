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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20);
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print('리스트 눌러짐');
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
                          '삼성1동 주민센터',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text('공공, 사회기관>행정복지센터'),
                        Text('서울특별시 강남구'),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.transparent,
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
