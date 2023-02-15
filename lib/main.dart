import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStepperTwo(),
    ),
  );
}

class MyStepperTwo extends StatefulWidget {
  const MyStepperTwo({Key? key}) : super(key: key);

  @override
  State<MyStepperTwo> createState() => _MyStepperTwoState();
}

class _MyStepperTwoState extends State<MyStepperTwo> {
  int stepIndex = 0;
  List<GlobalKey<FormState>> formKey =
      List.generate(8, (index) => GlobalKey<FormState>());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Stepper Two",
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Stepper(
          onStepTapped: (int index) {
            setState(() {
              (stepIndex <= 7)
                  ? (formKey[stepIndex].currentState!.validate())
                      ? (stepIndex < 7)
                          ? setState(() => stepIndex++)
                          : ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text("All Details Complete")))
                      : null
                  : null;
            });
          },
          currentStep: stepIndex,
          controlsBuilder: (context, details) => Container(),
          steps: [
            Step(
              isActive: stepIndex >= 0,
              state: stepIndex <= 0 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[0],
                child: Column(
                  children: [
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Details";
                        } else {
                          null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              title: const Text("First Name"),
            ),
            Step(
              isActive: stepIndex >= 1,
              state: stepIndex <= 1 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[1],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Last Name"),
            ),
            Step(
              isActive: stepIndex >= 2,
              state: stepIndex <= 2 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[2],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Email"),
            ),
            Step(
              isActive: stepIndex >= 3,
              state: stepIndex <= 3 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[3],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Contact No."),
            ),
            Step(
              isActive: stepIndex >= 4,
              state: stepIndex <= 4 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[4],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Address"),
            ),
            Step(
              isActive: stepIndex >= 5,
              state: stepIndex <= 5 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[5],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Nationality"),
            ),
            Step(
              isActive: stepIndex >= 6,
              state: stepIndex <= 6 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[6],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Date Of Birth"),
            ),
            Step(
              isActive: stepIndex >= 7,
              state: stepIndex <= 7 ? StepState.editing : StepState.complete,
              content: Form(
                key: formKey[7],
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Details";
                    } else {
                      return null;
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              title: const Text("Gender"),
            ),
          ],
        ),
      ),
    );
  }
}
