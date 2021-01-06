import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/widgets/bottom_bar_widget.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          bottomNavigationBar: BottomBarWidget(),
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            children: <Widget>[],
          ),
        ));
  }
}
