import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_bloc.dart';
import 'package:ful_result_checker/pages/dashboard_page.dart';
import 'package:ful_result_checker/repositories/student_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showLogin = false;
  String? errorText;
  bool donotShowPassword = true;

  String? matricNo;
  String? accessKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/ful_logo.jpg',
            ), // Add a background image if you have one
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Federal University of Lafia',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Result Checker',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                Container(
                  child: showLogin
                      ? Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: CloseButton(
                                    onPressed: () => _toggleShowLogin(),
                                  ),
                                ),
                                const Text(
                                  "Sign in with your Matric Number",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    label:
                                        const Text("Enter your matric number"),
                                    errorText: errorText,
                                  ),
                                  onChanged: (value) => matricNo = value,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    label: const Text("Access Key"),
                                    suffix: GestureDetector(
                                      child: const Icon(
                                          Icons.remove_red_eye_outlined),
                                      onTap: () => setState(() {
                                        donotShowPassword = !donotShowPassword;
                                      }),
                                    ),
                                  ),
                                  obscureText: donotShowPassword,
                                  onChanged: (value) => accessKey = value,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical: 15,
                                    ),
                                    textStyle: const TextStyle(fontSize: 18),
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    var student =
                                        StudentRepository().getStudent(
                                      matricNo ?? "",
                                      accessKey ?? "",
                                    );

                                    if (student != null) {
                                      context
                                          .read<AppBloc>()
                                          .setLoggedInUser(student)
                                          .then(
                                            (value) =>
                                                Navigator.pushReplacement(
                                              context,
                                              DashboardPage.route(),
                                            ),
                                          );
                                    } else {
                                      setState(() {
                                        errorText =
                                            "Student record not found. Verify the access key";
                                      });
                                    }
                                  },
                                  child: const Text("Submit"),
                                )
                              ],
                            ),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () => _toggleShowLogin(),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 15,
                            ),
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                          child: const Text('Get Started'),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _toggleShowLogin() {
    return setState(() {
      showLogin = !showLogin;
    });
  }
}
