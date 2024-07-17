import 'package:flutter/material.dart';
import 'package:ful_result_checker/pages/dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showLogin = false;
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
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Enter your matric number"),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Access Key"),
                                  ),
                                  obscureText: true,
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
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    DashboardPage.route(),
                                  ),
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
