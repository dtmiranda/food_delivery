import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

class RegisterPage extends StatefulWidget{
  final void Function()? onTap;
  
  const RegisterPage({super.key, required this.onTap});
  
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
        
            const SizedBox(height: 25),

            Text(
              "Let's create an account for you!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),

            MyTextField(
              hintText: "Email", 
              obscureText: false, 
              controller: emailController
            ),

            const SizedBox(height: 10),

            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: passwordController
            ),

            const SizedBox(height: 10),

              MyTextField(
                hintText: "Confirm Password",
                obscureText: true,
                controller: confirmPasswordController
              ),

            const SizedBox(height: 10),


            MyButton(
              text: "Sign Up", 
              onTap: () {}
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Login now", 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}