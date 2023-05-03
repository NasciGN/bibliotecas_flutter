import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página - Photo View'),
      ),
      body: Center(
        child: Container(
          child: PhotoView(
            imageProvider: const NetworkImage('https://sobresagas.com.br/wp-content/uploads/2023/03/avatar-o-caminho-da-agua-online.jpg'),
          ),
        ),
      ),
    );
  }
}
