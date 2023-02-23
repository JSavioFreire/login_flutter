import 'package:flutter/material.dart';
import 'package:login_flutter/service/auth_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService provider = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(provider.users!.email.toString()),
            Text(provider.users!.uid),
            Text(provider.users!.phoneNumber.toString()),
            const Text('Home'),
            TextButton(
                onPressed: () => (context).read<AuthService>().logout(),
                child: const Text('Sair'))
          ],
        ),
      ),
    );
  }
}
