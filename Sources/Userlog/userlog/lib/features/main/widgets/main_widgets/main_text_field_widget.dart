import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/main/assets/main_texts.dart';

class MainTextFieldWidget extends StatefulWidget {
  final double filterInputPadding;

  const MainTextFieldWidget({Key? key, required this.filterInputPadding})
      : super(key: key);

  @override
  State<MainTextFieldWidget> createState() => _MainTextFieldWidgetState();
}

class _MainTextFieldWidgetState extends State<MainTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //filter paddings
    double filterInputPadding = widget.filterInputPadding;

    return Container(
      padding: EdgeInsets.fromLTRB(
          filterInputPadding, filterInputPadding, filterInputPadding, 0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          labelText: MainTexts.filterText,
          labelStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
      ),
    );
  }
}
