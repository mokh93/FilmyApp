import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:filmy/widgets/backGraound.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/customeTextFiled.dart';
import '../widgets/logoAndName.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  savePrefs() async {
    SharedPreferences preferances = await SharedPreferences.getInstance();
    preferances.setString('userName', _emailController.text);
    preferances.setString('passWord', _passController.text);
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = createAccount;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void createAccount() {
    Navigator.pushReplacementNamed(context, '/signup');
  }

  late TextEditingController _emailController;
  late TextEditingController _passController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _emaiErrorText;
  String? _passErrorText;
  bool _obsecur = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGraound(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const LogoAndName(
                imageheight: 50,
                imageWidth: 50,
                fontSize: 30,
                name: "Sign In",
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get movies, TV series, documentaries.\n 1 month free, then \$10/month",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomeTextField(
                  obscureText: false,
                  controller: _emailController,
                  errorText: _emaiErrorText,
                  textInputType: TextInputType.emailAddress,
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
                cursorColor: Colors.grey,
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
                height: 40,
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
                  "Sign in",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  performLogin();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/Keeping Up With Google.png'),
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sign in With Google",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(166, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Create an account?",
                    recognizer: _tapGestureRecognizer,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ))
              ])),
              const SizedBox(
                height: 10,
              ),
            ],
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
    if (_emailController.text.isNotEmpty && _passController.text.isNotEmpty) {
      setState(() {
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
    savePrefs();
    Navigator.pushReplacementNamed(context, '/bottomnav');
  }
}
