
import 'package:flutter/material.dart';
import 'package:flutter_dev/constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key, this.title, this.price, this.country,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: kDefaultPadding / 3),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headline5.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}