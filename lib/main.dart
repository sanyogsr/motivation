import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              image: 'assets/images/one.jpg',
              title: 'Elon Musk',
              description:
                  'One Of the Biggest revolutionary person in the world of technology',
              position: '1',
              companies: 'Tesla ,Spacex etc.'),
          makePage(
              image: 'assets/images/two.jpg',
              title: 'Jeff Bezos',
              description:
                  'One Of the Biggest revolutionary person in the world of technology',
              position: '2',
              companies: 'Amazon Empire'),
          makePage(
              image: 'assets/images/three.jpg',
              title: 'Sam Altman',
              description:
                  'One Of the Biggest revolutionary person in the world of technology',
              position: '3',
              companies: 'OpenAi'),
          makePage(
              image: 'assets/images/four.jpg',
              title: 'Vitalik Buterin',
              description:
                  'One Of the Biggest revolutionary person in the world of technology',
              position: '4',
              companies: 'Ethereum'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, position, companies}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    position,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 58,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.rocket,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.rocket,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.rocket,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.rocket,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.rocket,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                      Text(companies, style: TextStyle(color: Colors.white70)),
                      // Text(
                      //   '(23000)',
                      //   style: TextStyle(color: Colors.white38, fontSize: 12),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Read More',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
