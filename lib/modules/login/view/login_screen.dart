import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/modules/home_page/view/home_page.dart';
import 'package:nature_app/modules/login/controller/login_page_controller.dart';
import 'package:nature_app/services/app/general_services.dart';
import 'package:nature_app/shared/components/components.dart';
import 'package:nature_app/modules/register/view/register_screen.dart';
import 'package:nature_app/config/device/device_dimenssions.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<LoginPageController>(
        init: LoginPageController(),
        builder: (controller) {
          return Container(
            width: DeviceDimenssions.width,
            height: DeviceDimenssions.height,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/login12.png',
                    ),
                    Text(
                      'Login to get more about nature',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter you e-mail! ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your E-mail.',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.name,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Passwsord is not valid';
                        } else if (value.length < 8) {
                          return 'Passwsord is too short';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your password.',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        height: 50.0,
                        color: Colors.green,
                        onPressed: () async {
                          closeKeyboard();
                          await controller.loginUser(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim());
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account!!',
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, RegisterScreen());
                          },
                          child: Text(
                            'REGISTER!',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
