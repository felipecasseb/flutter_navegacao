import 'package:flutter/material.dart';
import 'package:flutter_navegacao/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Email"),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 32,),
              Text("Senha"),
              TextField(
                obscureText: true,
                controller: senhaController,
              ),
              SizedBox(height: 32,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => HomeScreen(email: emailController.text)),
                            (route) => false
                    );
                  },
                  child: Text("Entrar")
              )
            ],
          ),
        ),
      ),
    );
  }
}
