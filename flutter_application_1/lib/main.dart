import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Card buildCard() {
    var heading = '\$10 per month';
    var subheading = 'ranking  8,5';
    var cardImage = NetworkImage(
        'https://fr.web.img4.acsta.net/pictures/21/11/16/10/01/4860598.jpg');
    'Beautiful movie that every body can watched with his family...';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                  'Movie took about spiderman adventure with doctor strange ... '),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('ACTION'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 149, 229),
          title: const Text("Morrocoflix",
              style: TextStyle(
                color: Colors.white,
              )),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        drawer: const Mydrawer(),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }
}

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Colors.blue,
            ])),
            child: Center(
                child: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://wallpaperaccess.com/full/2682080.jpg"),
              radius: 100,
            ))),
        const Divider(height: 6, color: Colors.blue),
        ListTile(
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          leading: const Icon(Icons.home, color: Colors.blue),
          trailing: const Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        const Divider(height: 6, color: Colors.white),
        ListTile(
          title: const Text(
            'Download',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          leading: const Icon(Icons.download, color: Colors.blue),
          trailing: const Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        const Divider(height: 4, color: Colors.white),
        const Divider(height: 4, color: Colors.white),
        ListTile(
          title: const Text(
            'Favorite',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          leading: const Icon(Icons.favorite, color: Colors.blue),
          trailing: const Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        const Divider(height: 6, color: Colors.white),
        const Divider(height: 6, color: Colors.white),
        ListTile(
          title: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          leading: const Icon(Icons.settings, color: Colors.blue),
          trailing: const Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        const Divider(height: 6, color: Colors.white),
        const Divider(height: 6, color: Colors.white),
      ],
    ));
  }
}
