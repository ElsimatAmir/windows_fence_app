import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:windows_calculater_app/data/reactive_text_input.dart';

class CalculaterSreen extends StatefulWidget {
  CalculaterSreen({super.key});

  int gate = 0;
  int gateOtcatnie = 0;
  int gateRasposhnie = 0;

  @override
  State<CalculaterSreen> createState() => _CalculaterSreenState();
}

class _CalculaterSreenState extends State<CalculaterSreen> {
  late FormGroup _form;
  @override
  void initState() {
    super.initState();
    _form = fb.group({
      'primmeter': FormControl<int>(validators: [Validators.number]),
      'gate': FormControl<int>(validators: [Validators.number]),
      'gateOtcatnie': FormControl<bool>(value: false),
      'gateRasposhnie': FormControl<bool>(value: false),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 72, 72, 72),
      ),
      child: ReactiveForm(
        formGroup: _form,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: const [
                  Expanded(
                    child: ReactiveTextInput(
                      formControlName: 'primmeter',
                      hint: 'Параммитер',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: ReactiveTextInput(
                      formControlName: 'gate',
                      hint: 'Калитка',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ReactiveSwitch(
                          formControlName: 'gateOtcatnie',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Откатные Ворота',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReactiveSwitch(
                          formControlName: 'gateRasposhnie',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Распашные Ворота',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
