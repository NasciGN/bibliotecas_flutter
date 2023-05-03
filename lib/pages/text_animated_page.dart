import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({Key? key}) : super(key: key);

  @override
  State<AnimatedTextPage> createState() => _AnimatedTextPageState();
}

class _AnimatedTextPageState extends State<AnimatedTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página - Text Animated'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText('Hello',
                    textStyle: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold)),
                ScaleAnimatedText('World!',
                    textStyle: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
