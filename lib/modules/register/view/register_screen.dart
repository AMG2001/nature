import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/config/device/device_dimenssions.dart';
import 'package:nature_app/modules/login/view/login_screen.dart';
import 'package:nature_app/modules/register/controller/register_page_controller.dart';
import 'package:nature_app/services/app/general_services.dart';
import '../../../shared/components/components.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<RegisterPageController>(
          init: RegisterPageController(),
          builder: (controller) {
            return Container(
              width: DeviceDimenssions.width,
              height: DeviceDimenssions.height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/register123.png'),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: controller.firstNameController,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your First Name !!';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: controller.lastNameController,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your last Name !!';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter you e-mail! ';
                            } else if (!GetUtils.isEmail(value)) {
                              return 'This is not Email Format !!';
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
                          controller: controller.passwordController,
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
                          height: 30.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: MaterialButton(
                            height: 50.0,
                            color: Colors.green,
                            onPressed: () async {
                              if (_key.currentState!.validate()) {
                                closeKeyboard();
                                await controller.registerUser();
                                navigateTo(context, LoginScreen());
                              }

                            },
                            child: Text(
                              'REGISTER',
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
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
