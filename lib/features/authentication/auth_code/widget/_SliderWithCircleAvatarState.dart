import 'package:flutter/material.dart';

class SliderWithCircleAvatar extends StatefulWidget {
  

  
  @override
  _SliderWithCircleAvatarState createState() => _SliderWithCircleAvatarState();
}

class _SliderWithCircleAvatarState extends State<SliderWithCircleAvatar> {

 
  double _sliderValue = 0.0; // Position of the slider

  @override
  Widget build(BuildContext context) {
    return 
    Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'verify',
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
                  _sliderValue = _sliderValue.clamp(0.0, 275.0); // Constrain movement
                });
              },
              onHorizontalDragEnd: (details) {
                if (_sliderValue >= 275.0 || _sliderValue > 150) {
                  print("Verified!");
                  
                  setState(() {
                    _sliderValue = 275; // Reset slider
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
    );
  }
}


