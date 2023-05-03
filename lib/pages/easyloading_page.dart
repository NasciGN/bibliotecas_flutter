import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyLoadingPage extends StatefulWidget {
  const EasyLoadingPage({Key? key}) : super(key: key);

  @override
  State<EasyLoadingPage> createState() => _EasyLoadingPageState();
}

class _EasyLoadingPageState extends State<EasyLoadingPage> {
  Timer? _timer;
  late double _progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página - Easyloading'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  _timer?.cancel();
                  await EasyLoading.showSuccess(
                    'Sucesso!',
                    maskType: EasyLoadingMaskType.black,
                  );
                },
                child: Text('Clica em mim!'))
          ],
        ),
      ),
    );
  }
}
