import 'package:exchange_gift/core/theme/dimens.dart';
import 'package:flutter/material.dart';

class CustomCheckListItem extends StatelessWidget {
  final String text;

  const CustomCheckListItem({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.check,
            color: Colors.red,
          ),
          SizedBox(
            width: Dimens.normalPadding,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.body1,
          ),
        ],
      ),
    );
  }
}
