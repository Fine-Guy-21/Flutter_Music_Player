import 'package:flutter/material.dart';

class ArtistsContainer extends StatelessWidget {
  const ArtistsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Text('Artists'),
      ),
    );
  }
}
