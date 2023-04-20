import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:userlog/features/about/api/about_routes.dart';
import 'package:userlog/features/main/assets/main_images.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_icon_button.dart';

class MainBottomWidget extends StatelessWidget {
  const MainBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        MainIconButton(
          imagePath: MainImages.infoButtonImage,
          onPressed: () {
            Navigator.pushNamed(
              context,
              AboutRoutes.about,
            );
          },
        ),
        MainIconButton(
            imagePath: MainImages.shutdownButtonImage,
            onPressed: () => SystemNavigator.pop()),
      ],
    );
  }
}
