import 'package:flutter/material.dart';
import 'package:projeto_bibliotecas/home_screen.dart';
import 'package:projeto_bibliotecas/pages/easyloading_page.dart';
import 'package:projeto_bibliotecas/pages/email_validator_page.dart';
import 'package:projeto_bibliotecas/pages/photo_page.dart';
import 'package:projeto_bibliotecas/pages/text_animated_page.dart';
import 'package:projeto_bibliotecas/pages/video_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    builder: EasyLoading.init(),
    routes: {
      '/home': (_) => const HomeScreen(),
      '/videoPlayer': (_) => const VideoPage(),
      '/photoPage': (_) => const PhotoPage(),
      '/animatedPage': (_) => const AnimatedTextPage(),
      '/easyloaderPage': (_) => const EasyLoadingPage(),
      '/emailPage': (_) => const EmailValidatorPage(),
    },
  ));
}
