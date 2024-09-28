import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 127, 242),
          title: const Text(
            'テスト',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
            tweetTile(),
          ],
        ),
      ),
    ));
  }
}

class tweetTile extends StatelessWidget {
  const tweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://frame-illust.com/fi/wp-content/uploads/2017/03/9687.png'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text('miki @miki'),
                  SizedBox(width: 8),
                  Text('2024-09-18'),
                ],
              ),
              SizedBox(height: 8),
              Text('最高でした'),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
            ],
          ),
        ],
      ),
    );
  }
}
