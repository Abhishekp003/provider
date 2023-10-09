
import 'package:flutter/material.dart';

import 'model/item_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: Home(
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemData =
    Scaffold(
        appBar: AppBar(
          title: Text('Items List'),
        ),
        body: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            TextFormField(
                decoration: InputDecoration(
              hintText: "Item",
              border: OutlineInputBorder(),
            )),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
                child: Card(
                    child: Row(
              children: [
                SizedBox(
                  width: 300,
                  height: 80,
                  child: Center(
                      child: Text("Item List")),
                )
              ],
            ))),
          ]),
        ));
  }
}
