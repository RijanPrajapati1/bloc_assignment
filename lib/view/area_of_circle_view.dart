import 'package:bloc_assignment/bloc/area_of_circle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  State<AreaOfCircleView> createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle Calculator')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Radius',
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<AreaOfCircleBloc, double>(
                builder: (context, state) {
                  return Text(
                    'Area: $state',
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  final radius = double.tryParse(radiusController.text);

                  if (radius != null) {
                    context.read<AreaOfCircleBloc>().add(AOCEvent(radius));
                  }
                  // If the radius is invalid, no action is taken
                },
                child: const Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
