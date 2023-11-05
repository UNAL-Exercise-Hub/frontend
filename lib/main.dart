import 'package:flutter/material.dart';
import 'package:front_end_unworkout/base/di/injection_container.dart';
import 'package:front_end_unworkout/base/presentation/widgets/footer.dart';
import 'package:front_end_unworkout/base/presentation/widgets/navbar.dart';
import 'package:front_end_unworkout/login/presentation/pages/login_page.dart';
import 'package:front_end_unworkout/login/presentation/views/login_view.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
  }
}
