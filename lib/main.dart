// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Widget myWidget() {
  return FractionallySizedBox(
    widthFactor: 0.7,
    heightFactor: 0.3,
    child: Container(
      color: Colors.green,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Center(
            child: Text("Test".toUpperCase(),
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
          ),
          decoration: BoxDecoration(
              color: Color(0xffe27368),
              borderRadius: BorderRadius.all(const Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(40, 0, 0, 0),
                  blurRadius: 18.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    22.0, // vertical, move down 10
                  ),
                )
              ]),
        ),
      ),
      padding: EdgeInsets.fromLTRB(50, 110, 50, 110),
      decoration: BoxDecoration(color: Color(0xffE74C3C)),
    );
  }
}
