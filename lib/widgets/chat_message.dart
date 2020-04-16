import 'package:flutter/material.dart';

final _name = 'Corey Carter';

class ChatMessage extends StatelessWidget {
  final String text;
  final AnimationController animCtrl;

  const ChatMessage({Key key, @required this.text, @required this.animCtrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 0,
      sizeFactor: CurvedAnimation(
        parent: animCtrl, curve: Curves.easeOut,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                child: Text(_name[0]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _name,
                  style: Theme.of(context).textTheme.subhead,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(text),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void dispose() {
    animCtrl?.dispose();
  }
}
