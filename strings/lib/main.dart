import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Strings',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/placeholder.jpeg')),
                const SizedBox(height: 70),
                const Text('-------------------------------'),
                const Text('---------------------------'),
                const Text('-----------------------'),
                const SizedBox(height: 70),
                OutlinedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewScreen())),
                  child: const Text('Continue'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect to Strings')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DealList())),
              child: const Text('Cannaught Place'),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () => {},
              child: const Text('More Comming Soon'),
            )
          ],
        ),
      ),
    );
  }
}

class DealList extends StatefulWidget {
  const DealList({super.key});

  @override
  State<DealList> createState() => _DealListState();
}

class _DealListState extends State<DealList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cannaught Place'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Ongoing Deals',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                ))),
                ListDeal(),
                ListDeal(),
                ListDeal(),
                ListDeal(),
                ListDeal(),
                ListDeal(),
              ],
            ),
          )
        )
      ),
    );
  }
}

class ListDeal extends StatelessWidget {
  const ListDeal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          ],
        ),
      ),
    );
  }
}
