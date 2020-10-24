import 'package:flutter/material.dart';
import 'package:sheria_pocket/resources/colors.dart';

class CharttingBubbles extends StatefulWidget {
  CharttingBubbles({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  String image =
      'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg';

  _CharttingBubbles createState() => _CharttingBubbles();
}

class _CharttingBubbles extends State<CharttingBubbles> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        children: isDivisible(widget.index, 2) ? getReceivedMessageLayout() : getSentMessageLayout()
      ),
    );
  }

  List<Widget> getSentMessageLayout() {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text('James Kaguo',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: widget.image != null
                  ? new Image.network(
                      'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg',
                      width: 250.0,
                    )
                  : new Text('Let her go'),
            ),
          ],
        ),
      ),
      new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg'),
              )),
        ],
      ),
    ];
  }

  List<Widget> getReceivedMessageLayout() {
    return <Widget>[
      new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
              margin: const EdgeInsets.only(right: 8.0),
              child: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg'),
              )),
        ],
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text('Guest',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: widget.image != null
                  ? new Image.network(
                      'https://miro.medium.com/max/3150/1*J_BOSSzUz4qBvAjFb-YgZA@2x.jpeg',
                      width: 250.0,
                    )
                  : new Text('We love to test you'),
            ),
          ],
        ),
      ),
    ];
  }

  bool isDivisible(int dividend, int divisor) {
    return dividend % divisor == 0;
  }
}
