import 'package:flutter/material.dart';
import 'package:flutter_widgets_playground/examples/google_maps/google_maps_example.dart';
import 'package:go_router/go_router.dart';

const _examples = [GoogleMapsExample()];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Widgets Playground"),
      ),
      body: ListView.builder(
        itemCount: _examples.length,
        itemBuilder: (_, i) =>
            OutlinedButton(onPressed: () => context.push(_examples[i].path),
            child: Text(_examples[i].name),
        ),
      ),
    );
  }
}
