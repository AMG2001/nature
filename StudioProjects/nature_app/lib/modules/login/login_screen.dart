import 'package:flutter/material.dart';
import 'package:nature_app/shared/components/components.dart';
import 'package:nature_app/modules/register/register_screen.dart';
class LoginScreen extends StatelessWidget {


  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/leaves.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login...',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 10.0,
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
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                validator: (value){
                  if(value!.isEmpty){
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
                onFieldSubmitted: (value){
                  print(value);
                },
                onChanged: (value){
                  print(value);

                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Passwsord is not valid';
                  }
                  else if(value.length<8){
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
                  onPressed: (){

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
                      onPressed: (){
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text(
                          'REGISTER!',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
