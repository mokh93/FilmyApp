import 'package:flutter/material.dart';
import 'package:filmy/widgets/backGraound.dart';
import 'package:filmy/widgets/customeTextFiled.dart';

import '../widgets/logoAndName.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    _userController = TextEditingController();
    _emailController = TextEditingController();
    _passController = TextEditingController();
  }

  @override
  void dispose() {
    _userController.dispose();
    _emailController.dispose();
    _passController.dispose();

    super.dispose();
  }

  late TextEditingController _userController;
  late TextEditingController _emailController;
  late TextEditingController _passController;

  String? _userErrorText;
  String? _emaiErrorText;
  String? _passErrorText;
  bool _obsecur = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGraound(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Spacer(),
                const LogoAndName(
                  imageheight: 50,
                  imageWidth: 50,
                  name: "Create Account",
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomeTextField(
                    controller: _userController,
                    errorText: _userErrorText,
                    textInputType: TextInputType.name,
                    obscureText: false,
                    expands: true,
                    lable: "UserName",
                    suffixIcononPressed: () {},
                    suffixIconData: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                CustomeTextField(
                    controller: _emailController,
                    errorText: _emaiErrorText,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    expands: true,
                    lable: "Email",
                    suffixIcononPressed: () {},
                    suffixIconData: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: _passController,
                  onTap: () {},
                  textInputAction: TextInputAction.done,
                  cursorColor: const Color.fromARGB(255, 255, 255, 255),
                  cursorRadius: const Radius.circular(10),
                  maxLength: 30,
                  enabled: true,
                  obscureText: _obsecur,
                  minLines: 1,
                  maxLines: 1,
                  expands: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(28, 196, 195, 195),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    constraints: BoxConstraints(
                      maxHeight: _passErrorText == null ? 60 : 75,
                    ),
                    counterText: '',
                    labelText: "Password",
                    labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    floatingLabelStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    floatingLabelAlignment: FloatingLabelAlignment.center,

                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obsecur = !_obsecur;
                        });
                      },
                      icon: Icon(
                        _obsecur ? Icons.visibility : Icons.visibility_off,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    errorText: _passErrorText,
                    // errorMaxLines: 1,

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        )),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    performLogin();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _passController.text.isNotEmpty &&
        _userController.text.isNotEmpty) {
      setState(() {
        _userErrorText = _userController.text.isEmpty
            ? "please fill the userName feild"
            : null;
        _emaiErrorText = _emailController.text.isEmpty
            ? "please fill the email feild"
            : null;
        _passErrorText = _passController.text.isEmpty
            ? "please fill the password feild"
            : null;
      });
      return true;
    } else {
      setState(() {
        _userErrorText = _userController.text.isEmpty
            ? "please fill the userName feild"
            : null;
        _emaiErrorText = _emailController.text.isEmpty
            ? "please fill the email feild"
            : null;
        _passErrorText = _passController.text.isEmpty
            ? "please fill the password feild"
            : null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Enter Required Data !"),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.horizontal,
        ),
      );
      return false;
    }
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/start');
  }
}
