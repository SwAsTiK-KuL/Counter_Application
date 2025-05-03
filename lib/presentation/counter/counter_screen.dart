import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../application/counter_bloc.dart';
import '../../../application/counter_event.dart';
import '../../../application/counter_state.dart';
import '../login_form/login_form_screen.dart';
import '../list/list_screen.dart';

part 'widgets/counter_button.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    bool tokenCleared = await prefs.remove('token');

    if (tokenCleared) {
      print("Token cleared successfully.");
    } else {
      print("Failed to clear token.");
    }

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginFormScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset',
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent.reset());
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              _logout(context);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
              Theme.of(context).colorScheme.background,
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Count',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      BlocBuilder<CounterBloc, CounterState>(
                        buildWhen: (previous, current) => previous.count != current.count,
                        builder: (context, state) {
                          return TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 300),
                            tween: Tween(begin: 0, end: 1),
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: 0.8 + (0.2 * value),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 10,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${state.count}',
                                    style: TextStyle(
                                      fontSize: 46,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      FilledButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const ListScreen()),
                          );
                        },
                        icon: const Icon(Icons.list),
                        label: const Text('View Resource List'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CounterButton(
              icon: Icons.remove,
              heroTag: 'decrement',
              onPressed: () =>
                  context.read<CounterBloc>().add(const CounterEvent.decrement()),
            ),
            _CounterButton(
              icon: Icons.add,
              heroTag: 'increment',
              onPressed: () =>
                  context.read<CounterBloc>().add(const CounterEvent.increment()),
            ),
          ],
        ),
      ),
    );
  }
}
