import 'package:flutter/material.dart';

class Addlist extends StatelessWidget {
  final Function addls;
  final titleController = TextEditingController();
  final textController = TextEditingController();
  Addlist(this.addls);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Text'),
            controller: textController,
          ),
          ElevatedButton(
              onPressed: () {
                addls(titleController.text, textController.text);
              },
              child: Text('Done'))
        ],
      ),
    );
  }
}
