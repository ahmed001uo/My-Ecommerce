import 'package:ecommerce_one/utilities/enums.dart';
import 'package:ecommerce_one/utilities/routes.dart';
import 'package:ecommerce_one/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _LogainPageState();
}

class _LogainPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passWordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  var _authType = AuthFormType.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Text(
                  _authType == AuthFormType.login ? "Login" : "Register",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  onEditingComplete: () =>
                      FocusScope.of(context).requestFocus(_passwordFocusNode),
                  validator: (val) =>
                      val!.isEmpty ? 'please enter your Email!' : null,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: "enter your Email",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _passWordController,
                  focusNode: _passwordFocusNode,
                  validator: (val) =>
                      val!.isEmpty ? 'please enter your password!' : null,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: "enter your password",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                if (_authType == AuthFormType.login)
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: const Text("Forget your password !"),
                      onTap: () {},
                    ),
                  ),
                const SizedBox(
                  height: 25,
                ),
                MainButton(
                    text:
                        _authType == AuthFormType.login ? "Login" : "Register",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.bottomNavBarRoute);
                      }
                    }),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: Text(_authType == AuthFormType.login
                        ? "Dont have an account? Register"
                        : "Have an account Login"),
                    onTap: () {
                      _formKey.currentState!.reset();
                      setState(() {
                        if (_authType == AuthFormType.login) {
                          _authType = AuthFormType.register;
                        } else {
                          _authType = AuthFormType.login;
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 35,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    _authType == AuthFormType.login
                        ? "or Login with"
                        : "or Register With",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: const Icon(Icons.add),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
