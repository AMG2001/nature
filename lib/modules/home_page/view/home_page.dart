import 'package:flutter/material.dart';
import 'package:nature_app/modules/home_page/components/touchable_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
        child: ListView(
          children: [
            Text(
              "Dummy Text Here",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            TouchableCard(
              title: 'Title 1',
              subtutle: 'subtitle 1',
              onTap: () {},
              color: Colors.yellow,
            ),
            TouchableCard(
              title: 'Title 1',
              subtutle: 'subtitle 1',
              onTap: () {},
              color: Colors.blueAccent,
            ),
            TouchableCard(
              title: 'Title 1',
              subtutle: 'subtitle 1',
              onTap: () {},
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
