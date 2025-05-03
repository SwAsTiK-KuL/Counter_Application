import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/list/list_bloc.dart';
import '../../../application/list/list_event.dart';
import '../../../application/list/list_state.dart';
import '../../../infrastructure/List/data_source/list_api.dart';
import '../../infrastructure/user_form/data_source/user_form_api.dart';
import '../../infrastructure/user_form/dto/user_form_dto.dart';
import '../user_form/user_form_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBloc(resourceApi: ResourceApi())..add(FetchListData()),
      child: const _ListBody(),
    );
  }
}

class _ListBody extends StatefulWidget {
  const _ListBody({super.key});

  @override
  State<_ListBody> createState() => _ListBodyState();
}

class _ListBodyState extends State<_ListBody> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _year = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resources"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserFormScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
          if (state is ListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ListLoaded) {
            return ListView.builder(
              itemCount: state.resources.length,
              itemBuilder: (context, index) {
                final resource = state.resources[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  color: Color(_hexToColor(resource.color)),
                  child: ListTile(
                    title: Text(
                      resource.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Year: ${resource.year}, Pantone: ${resource.pantoneValue}",
                      style: const TextStyle(color: Colors.white70),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.white),
                          onPressed: () {
                            _showEditBottomSheet(context, resource.name, resource.year.toString());
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () async {
                            final confirm = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Delete Resource"),
                                content: const Text("Are you sure you want to delete this resource?"),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, false),
                                    child: const Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, true),
                                    child: const Text("Delete", style: TextStyle(color: Colors.red)),
                                  ),
                                ],
                              ),
                            );

                            if (confirm == true) {
                              try {
                                await UserFormApi().deleteUser(2);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Deleted successfully')),
                                );
                                context.read<ListBloc>().add(FetchListData());
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Delete failed: $e')),
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state is ListError) {
            return Center(child: Text("Error: ${state.message}"));
          } else {
            return const Center(child: Text("No Data"));
          }
        },
      ),
    );
  }

  int _hexToColor(String hex) {
    hex = hex.replaceAll("#", "");
    return int.parse("FF$hex", radix: 16);
  }

  void _showEditBottomSheet(BuildContext context, String currentName, String currentYear) {
    _name = currentName;
    _year = currentYear;

    final TextEditingController nameController = TextEditingController(text: _name);
    final TextEditingController yearController = TextEditingController(text: _year);
    bool isButtonEnabled = _isValidName(_name) && _isValidYear(_year);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  onChanged: () {
                    setModalState(() {
                      isButtonEnabled = _isValidName(nameController.text) && _isValidYear(yearController.text);
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(labelText: "Name"),
                        validator: (value) => _isValidName(value ?? "") ? null : "Enter a valid name",
                      ),
                      TextFormField(
                        controller: yearController,
                        decoration: const InputDecoration(labelText: "Year"),
                        keyboardType: TextInputType.number,
                        validator: (value) => _isValidYear(value ?? "") ? null : "Enter a valid year",
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: isButtonEnabled
                            ? () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              final updatedDto = UserFormDto(
                                name: nameController.text.trim(),
                                job: yearController.text.trim(),
                              );

                              await UserFormApi().updateUser(2, updatedDto); // Replace with resource.id

                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Updated Successfully')),
                              );
                              context.read<ListBloc>().add(FetchListData());
                            } catch (e) {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Update failed: $e')),
                              );
                            }
                          }
                        }
                            : null,
                        child: const Text("Update"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  bool _isValidName(String name) => name.trim().isNotEmpty && name.length >= 3;

  bool _isValidYear(String year) => int.tryParse(year) != null && year.length == 4;
}
