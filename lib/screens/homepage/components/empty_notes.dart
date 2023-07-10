import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note/constants.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Write Memo",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
            Image.asset(
              'assets/images/notes.jpg',
              height: size.height * 0.4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width * 0.8,
                child: const Text(
                  "쉽게 메모를 작성하는데 필요한 필수 기능입니다.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: size.height * 0.05,
          right: size.width * 0.15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.5,
                child: const Text(
                  "첫 번째 메모를 추가하려면 여기를 클릭하세요.",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black26),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/arrow.png',
                  color: Colors.black12,
                  height: 50,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
