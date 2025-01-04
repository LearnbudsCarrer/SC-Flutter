import 'package:flutter/material.dart';
import 'package:service_provider/common/theme.dart';

class SliderWithCircleAvatar extends StatefulWidget {
  String SlindeName;
  SliderWithCircleAvatar({super.key, required this.SlindeName});

  @override
  _SliderWithCircleAvatarState createState() => _SliderWithCircleAvatarState();
}

class _SliderWithCircleAvatarState extends State<SliderWithCircleAvatar> {
  double _sliderValue = 5.0; // Position of the slider

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.7),
                  spreadRadius: 0.1,
                  blurRadius: 1,
                  offset: Offset(0, 7))
            ],
            color: appColors.appBarColor,
            borderRadius: BorderRadius.circular(30)),
        width: 350,
        height: 60,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.SlindeName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: _sliderValue,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    // Update slider position based on drag
                    _sliderValue += details.delta.dx;
                    _sliderValue =
                        _sliderValue.clamp(5, 300.0); // Constrain movement
                  });
                },
                onHorizontalDragEnd: (details) {
                  if (_sliderValue >= 300.0 || _sliderValue > 150) {
                    print("Verified!");

                    setState(() {
                      _sliderValue = 295; // Reset slider
                    });
                  }
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
