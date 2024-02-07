import 'package:flutter/material.dart';

class AddHospitalScreen extends StatefulWidget {
  const AddHospitalScreen({super.key});

  @override
  State<AddHospitalScreen> createState() => _AddHospitalScreenState();
}

class _AddHospitalScreenState extends State<AddHospitalScreen> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget mapContent = Center(
      child: Text(
        "Location not selected",
        style: TextStyle(color: Colors.grey[500]),
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Image.asset(
                  "assets/images/logoAdmin.png",
                  width: 250,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Add a new hospital!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Form(
                  key: _form,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 18),
                        textCapitalization: TextCapitalization.sentences,
                        autocorrect: false,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          fillColor: const Color.fromARGB(255, 240, 247, 255),
                          filled: true,
                          hintText: "Hopital Name",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please enter the Hospital name";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(fontSize: 18),
                        textCapitalization: TextCapitalization.sentences,
                        autocorrect: false,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          fillColor: const Color.fromARGB(255, 240, 247, 255),
                          filled: true,
                          hintText: "Hopital Email",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              !value.contains("@")) {
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 18),
                        textCapitalization: TextCapitalization.sentences,
                        autocorrect: false,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          fillColor: const Color.fromARGB(255, 240, 247, 255),
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              value.trim().length <= 6) {
                            return "Password shuld contain 6 characters at least.";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 240, 247, 255),
                        ),
                        child: mapContent,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
                label: const Text("Select Location"),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Add Hospital",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Copyright ',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Icon(
                    Icons.copyright,
                    size: 15,
                  ),
                  Text(
                    ' 2024, CareMe',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
