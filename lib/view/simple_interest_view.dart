import 'package:bloc_assignment/bloc/simple_interest_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: principalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Principal Amount',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time in Years',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate of Interest',
                ),
              ),
              const SizedBox(height: 8),
              BlocBuilder<SimpleInterestBloc, double>(
                builder: (context, state) {
                  return Text(
                    'Interest: $state',
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  final principal = double.tryParse(principalController.text);
                  final time = double.tryParse(timeController.text);
                  final rate = double.tryParse(rateController.text);

                  if (principal != null && time != null && rate != null) {
                    context
                        .read<SimpleInterestBloc>()
                        .add(SIEvent(principal, rate, time));
                  }
                },
                child: const Text('Calculate Interest'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
