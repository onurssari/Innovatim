import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '50', ' Temizlenen Alan'),
          buildDivider(),
          buildButton(context, '167 ', 'Toplanan Puan'),
        ],
      );
  Widget buildDivider() => Container(
        height: 30,
        child: const VerticalDivider(
          color: Colors.black,
          thickness: 2,
        ),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 6),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: InkWell(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                value,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 2),
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          onTap: () {},
        ),
      );
}
