import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$teamAPoints', style: TextStyle(fontSize: 90)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints = teamAPoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamAPoints = teamAPoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),

                const VerticalDivider(color: Colors.grey, thickness: 1),

                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$teamBPoints', style: TextStyle(fontSize: 90)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 16),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints = teamBPoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 60),
                      ),

                      onPressed: () {
                        setState(() {
                          teamBPoints = teamBPoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 60),
              ),

              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Rest',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const Spacer(),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Point Counter'),
        ),
      ),
    );
  }
}
