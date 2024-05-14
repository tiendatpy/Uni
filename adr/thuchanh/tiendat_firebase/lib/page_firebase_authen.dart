import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:tiendat_firebase/connect_db/widget_connet_firebase.dart';

void main() {
  runApp(const MyAuthDemo());
}

class MyAuthDemo extends StatelessWidget {
  const MyAuthDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFirebaseConnect(
      errorMessage: "Loi ket noi firebase",
      connectingMessage: "Dang ket noi...",
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FirebaseAuth demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PageSignIn(),
      ),
    );
  }
}

class PageSignIn extends StatelessWidget {
  const PageSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SignInScreen(
            providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(clientId: ""),
              PhoneProviderConfiguration(),
            ],
          );
        }
        return const PageHomeAuth();
      },
    );
  }
}

class PageHomeAuth extends StatelessWidget {
  const PageHomeAuth({super.key});

  @override
  Widget build(BuildContext context) {
    // var user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Demo"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("xin chao")],
        ),
      ),
    );
  }
}
