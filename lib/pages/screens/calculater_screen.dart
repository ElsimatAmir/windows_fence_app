import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
      'primmeter': FormControl<double>(
        validators: [Validators.required],
      ),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ReactiveForm(
        formGroup: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // here should be all the entry data to calculate from
          children: [
            Row(
              children: const [
                Text('Параметар: '),
                //  ReactiveTextField(formControlName: 'parra',),
              ],
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
