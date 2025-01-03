import 'package:flutter/material.dart';

class Numberpad extends StatelessWidget {
  const Numberpad({super.key});

  @override
  Widget build(BuildContext context) {
      num(String num) {
    return Container(
      width: 11,
      height: 23,
      child: Center(
          child: Text(
        num,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
    return  Container(
              height: 267,
              width: 297,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                child: GridView.count(
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 4,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: [
                    num('1'),
                    num('2'),
                    num('3'),
                    num('4'),
                    num('5'),
                    num('6'),
                    num('7'),
                    num('8'),
                    num('9'),
                    num('*'),
                    num('0'),
                    Icon(
                      Icons.backspace_outlined,
                      size: 20,
                    )
                  ],
                ),
              ),
            );
  }
}