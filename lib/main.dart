import 'package:flutter/material.dart';

void main() {
  runApp(basket_ball());
}

class basket_ball extends StatefulWidget {
  @override
  State<basket_ball> createState() => _basket_ballState();
}

class _basket_ballState extends State<basket_ball> {
  int teamA_points = 0;

  int teamB_points = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 80, 176),
          title: Text("Basket ball Score counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        teamA_points.toString(),
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 420,
                  child: VerticalDivider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        teamB_points.toString(),
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.blue,
                          minimumSize: Size(130, 40),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA_points = 0;
                  teamB_points = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.blue,
                minimumSize: Size(130, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
