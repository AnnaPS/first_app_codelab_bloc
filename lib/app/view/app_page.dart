import 'package:first_app_bloc/app/app.dart';
import 'package:first_app_bloc/app/view/app_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
        ),
      ),
      home: BlocProvider(
        create: (context) => AppBloc()..add(AppEventNextFetched()),
        child: AppView(),
      ),
    );
  }
}
