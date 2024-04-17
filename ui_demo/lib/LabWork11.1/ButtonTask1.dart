import 'package:flutter/material.dart';

class ButtonTaskScreen extends StatefulWidget {
  const ButtonTaskScreen({Key? key}) : super(key: key);

  @override
  State<ButtonTaskScreen> createState() => _ButtonTaskScreenState();
}

class _ButtonTaskScreenState extends State<ButtonTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Examples')),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print('Text Button clicked');
                },
                child: const Text('Text Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button clicked');
                },
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  print('Outlined Button clicked');
                },
                child: const Text('Outlined Button'),
              ),
              const SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  print('Floating Action Button clicked');
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  print('Add to Cart Button clicked');
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Add to Cart'),
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () {
                  print('Send Mail Button clicked');
                },
                icon: const Icon(Icons.mail),
                label: const Text('Send Mail'),
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () {
                  print('Call Button clicked');
                },
                icon: const Icon(Icons.phone),
                label: const Text('Make Call'),

              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () {
                  print('Location Button clicked');
                },
                icon: const Icon(Icons.location_on),
                label: const Text('Open Maps'),
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () {
                  print('Favorite Button clicked');
                },
                icon: const Icon(Icons.favorite),
                label: const Text('Add to Favorite'),

              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Disabled Button clicked');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.grey,
                  elevation: 0,
                ),
                child: const Text('Disabled Button'),
              ),
              const SizedBox(height: 16),
              const ElevatedButton(
                onPressed: null,
                child: Text('Null Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Rounded Button clicked');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Rounded Button'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Custom Size Button clicked');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 50),
                ),
                child: const Text('Custom Size Button'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
