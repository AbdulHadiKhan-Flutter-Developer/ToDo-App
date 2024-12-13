import 'package:flutter/material.dart';
import './models/models.dart';
import './widgets/list_ui.dart';
import './widgets/addlist.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void addlst(String txTitle, txText) {
    final newTx = Models(date: DateTime.now(), text: txText, title: txTitle);
    setState(() {
      list.add(newTx);
    });
  }

  void startAddls(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: Addlist(addlst),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  final List<Models> list = [
    Models(date: DateTime.now(), text: 'Hi', title: 'Hello'),
    Models(date: DateTime.now(), text: 'Hello', title: 'Hi'),
    Models(date: DateTime.now(), text: '7500', title: 'weekly Expense')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text('TodoApp'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            ListUi(list),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => startAddls(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
  