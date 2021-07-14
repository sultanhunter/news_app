import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/presentation/screens/news_home.dart';
import 'package:news_app/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future loginBottomSheet(BuildContext context, bool isLogin) {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePassController = TextEditingController();

  return showModalBottomSheet(
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                height: 4.0,
                width: 60.0,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                child: isLogin
                    ? Text(
                        'Sign in',
                        style: kHeadingStyle,
                      )
                    : Text(
                        'Sign Up',
                        style: kHeadingStyle,
                      ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              textField(context, _emailController, 'Email:'),
              SizedBox(
                height: isLogin ? 20.0 : 10.0,
              ),
              textField(context, _passwordController, 'Password:'),
              SizedBox(
                height: isLogin ? 20.0 : 10.0,
              ),
              isLogin
                  ? const SizedBox.shrink()
                  : textField(context, _rePassController, 'Re-enter Password:'),
              isLogin
                  ? Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(
                height: 10.0,
              ),
              LoginButton(
                label: isLogin ? 'Sign in' : 'Sign Up',
                onPressed: isLogin
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsHome(),
                          ),
                        );
                      }
                    : () {},
                color: Colors.lightBlueAccent,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      isLogin ? 'Or Sign In With' : 'Or Sign Up With',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      size: 40.0,
                      color: Color(0xFFE34133),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      size: 40.0,
                      color: Color(0xFF1F6BF7),
                      // Icons.facebook,
                      // size: 50.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(isLogin
                      ? 'Don\'t have an account? '
                      : 'Have an account? '),
                  InkWell(
                    onTap: isLogin ? () {} : () {},
                    child: Text(
                      isLogin ? 'Sign up' : 'Sign in',
                      style: const TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        );
      });
}

Widget textField(
    BuildContext context, TextEditingController controller, String hint) {
  return Container(
    padding: const EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: const Color(0xFFAC9E8D),
      borderRadius: BorderRadius.circular(15.0),
    ),
    width: MediaQuery.of(context).size.width * 0.8,
    child: Center(
      child: TextField(
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
