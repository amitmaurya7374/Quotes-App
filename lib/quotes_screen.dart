import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;
  List quotes = [
    "Life isn’t about getting and having, it’s about giving and being.",
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don’t take.",
    "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. "
        "26 times I’ve been trusted to take the game winning shot and missed."
        " I’ve failed over and over and over again in my life. "
        "And that is why I succeed.",
    "The most difficult thing is the decision to act, the rest is merely tenacity.",
    "Every strike brings me closer to the next home run.",
    "Definiteness of purpose is the starting point of all achievement.",
    "We become what we think about.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "Your time is limited, so don’t waste it living someone else’s life."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.23,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
              ),
              child: FlatButton.icon(
                color: Colors.greenAccent.shade700,
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  "Inspire me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index = _index + 1;
    });
  }
}
