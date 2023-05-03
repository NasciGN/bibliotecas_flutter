import 'package:flutter/material.dart';
import 'components/ContainerMenuButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              Text('Bibliotecas'),
              SizedBox(
                height: 40,
              ),
              ContainerMenuButton(
                RoutePageHomeScreen: 'videoPlayer',
                TextPage: 'Video Player',
              ),
              ContainerMenuButton(
                RoutePageHomeScreen: 'photoPage',
                TextPage: 'Photo View',
              ),
              ContainerMenuButton(
                RoutePageHomeScreen: 'animatedPage',
                TextPage: 'Animated Text',
              ),
              ContainerMenuButton(
                RoutePageHomeScreen: 'easyloaderPage',
                TextPage: 'Easyload',
              ),
              ContainerMenuButton(
                RoutePageHomeScreen: 'emailPage',
                TextPage: 'Email Validator',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
