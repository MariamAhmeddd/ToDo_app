import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/model/line.dart';

class CatagoriesView extends StatelessWidget {
  const CatagoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 130.0,
          width: 160.0,
          child: Center(
            child: Container(
              height: 130.0,
                width: 160.0,
              padding: EdgeInsets.all(20,),
              decoration: BoxDecoration(
                color: Colors.black87,
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(40.0),
                 topRight: Radius.circular(40.0),
                 bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
            ),
              ),
              child: Column(
                children: [
                  Center(
                      child: Text(
                        'Business',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                  ),
                  SizedBox(height: 30,),
                  Line(),
                ],
              )
            ),
          ),
        ),
        SizedBox(width: 50,),
        Container(
          height: 130.0,
          width: 160.0,
          child: Center(
            child: Container(
                height: 130.0,
                width: 160.0,
                padding: EdgeInsets.all(20,),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                ),
                child: Column(
                  children: [
                    Center(
                        child: Text(
                          'Personal',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                    ),
                    SizedBox(height: 30,),
                    Line(),
                  ],
                )
            ),
          ),
        ),
      ],
    );
  }
}
