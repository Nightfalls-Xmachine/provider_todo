import 'package:flutter/material.dart';
import 'package:provider_todo_list/widgets/button.dart';

import '../../utils/routers.dart';
import '../../widgets/text_field.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    _firstName.clear();
    _lastName.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  customTextField(
                    title: 'First Name',
                    controller: _firstName,
                    hint: 'Enter your first name',
                  ),
                  customTextField(
                    title: 'Last Name',
                    controller: _lastName,
                    hint: 'Enter your last name',
                  ),
                  customTextField(
                    title: 'Email',
                    controller: _email,
                    hint: 'Enter you valid email address',
                  ),
                  customTextField(
                    title: 'Password',
                    controller: _password,
                    hint: 'Enter your secured password',
                  ),
                  customButton(
                      text: 'Register ',
                      tap: (){},
                      context: context,
                      status: false
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      PageNavigator(ctx: context)
                          .nextPage(page: const LoginPage());
                    },
                    child: const Text('Login Instead'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
