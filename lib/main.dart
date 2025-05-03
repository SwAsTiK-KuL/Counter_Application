import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/login_form/login_form_bloc.dart';
import 'infrastructure/login_form/data_source/login_api.dart';
import 'infrastructure/core/storage/token_storage.dart';
import 'application/counter_bloc.dart';
import 'presentation/login_form/login_form_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginFormBloc(
            iLoginFormRepository: LoginApi(),
            tokenStorage: TokenStorage(),
          ),
        ),
        BlocProvider(
          create: (_) => CounterBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginFormScreen(),
    );
  }
}
