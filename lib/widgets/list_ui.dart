import 'package:app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListUi extends StatelessWidget {
  final List<Models> uiList;
  ListUi(this.uiList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: uiList.map((ls) {
        return Card(
          margin: EdgeInsets.all(10),
          elevation: 6,
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ls.title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ls.text,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        DateFormat.MEd().format(ls.date),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              )),
        );
      }).toList(),
    );
  }
}
