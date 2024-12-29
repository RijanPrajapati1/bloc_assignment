import 'package:bloc_assignment/bloc/student_list_bloc.dart';
import 'package:bloc_assignment/model/Student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentListView extends StatelessWidget {
  StudentListView({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Input Form
              Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(
                      hintText: "Age",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                      hintText: "Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final name = _nameController.text;
                        final age = int.tryParse(_ageController.text) ?? 0;
                        final address = _addressController.text;

                        if (name.isNotEmpty && address.isNotEmpty && age > 0) {
                          final student = Student(
                            name: name,
                            age: age,
                            address: address,
                          );

                          context
                              .read<StudentListBloc>()
                              .add(AddStudentEvent(student));

                          _nameController.clear();
                          _ageController.clear();
                          _addressController.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                      ),
                      child: const Text("Submit"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Expanded(
                child: BlocBuilder<StudentListBloc, List<Student>>(
                  builder: (context, state) {
                    if (state.isEmpty) {
                      return Center(child: Text("No students added yet."));
                    }
                    return ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        final student = state[index];
                        return ListTile(
                          title: Text(student.name),
                          subtitle: Text(
                            "Age: ${student.age}, Address: ${student.address}",
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
