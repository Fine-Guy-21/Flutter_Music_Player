import 'package:flutter/material.dart';

class AlbumsContainer extends StatelessWidget {
  const AlbumsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Albums'),
      ),
    );
  }
}
