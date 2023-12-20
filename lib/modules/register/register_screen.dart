import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();


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
                'Register...',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  Expanded(
                      child:TextFormField(
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        onChanged: (value){
                          print(value);
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'First Name';
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
                    child:TextFormField(
                      controller: lastNameController,
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Last Name';
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
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  height: 50.0,
                  color: Colors.green,
                  onPressed: (){

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
    );
  }
}
