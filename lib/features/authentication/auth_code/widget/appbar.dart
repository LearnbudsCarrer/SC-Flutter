import 'package:flutter/material.dart';
import 'package:service_provider/common/theme.dart';

class Appbar extends StatelessWidget {
  String AppName ;
   Appbar({super.key,required this.AppName});

  @override
  Widget build(BuildContext context) {
    return  Container(
              color: appColors.appBarColor,
              height: 129,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            side: BorderSide(
                                width: 1, color: appColors.appWhiteColor)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 3,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: appColors.appWhiteColor,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 14.21),
                      width: 250,
                      height: 30,
                      child: Text(
                       AppName,
                        style: TextStyle(
                            color: appColors.appWhiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}