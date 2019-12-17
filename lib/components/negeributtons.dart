import 'constants.dart';
import 'package:flutter/material.dart';
import 'easyBadgeCard.dart';

class Buttons extends StatelessWidget {
  final int negeri;
  final negeriRoute;

  const Buttons({Key key, this.negeri, this.negeriRoute}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    
    return GestureDetector(
        onTap: () async{
          Navigator.pushNamed(
            context,
            this.negeriRoute,
          );

        },
        child: negeriNegeri[this.negeri]);
  }
  
}

class TempatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: EasyBadgeCard(
          rightBadge: johorColour,
          title: 'Johor',
          description: '4 Zon',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
  }
}
