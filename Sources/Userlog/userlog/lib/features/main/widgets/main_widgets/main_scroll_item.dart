import 'package:flutter/cupertino.dart';

class MainScrollItem extends StatelessWidget {
  final DateTime date;
  final String text;
  const MainScrollItem({Key? key, required this.date, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("$date"),
        Text(text),
      ],
    );
  }
}
