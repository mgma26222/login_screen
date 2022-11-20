import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  var emailControl= TextEditingController();
  var passwordControl= TextEditingController();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Screen'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailControl,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email Address...',
                  prefixIcon: Icon(
                      Icons.email
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordControl,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password...',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.green,
                child: MaterialButton(
                  onPressed: ()
                  {
                    debugPrint(emailControl.text);
                    debugPrint(passwordControl.text);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,

                    ),

                  ),


                ),
              ),
              const SizedBox(height: 20),
              Row(
                children:  [
                  Text(
                    'don\'t have account',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      debugPrint('hello');

                    },
                    child: Text(
                      'Register',
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
