import 'package:flutter/material.dart';

import 'package:userlog/features/main/widgets/clear_widgets/clear_center_widget.dart';
import 'package:userlog/features/main/widgets/clear_widgets/clear_title.dart';

class ClearAnswer extends StatelessWidget {
  const ClearAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            ClearTitle(),
            ClearCenterWidget(),
          ],
        ),
      ),
    );
  }
}
