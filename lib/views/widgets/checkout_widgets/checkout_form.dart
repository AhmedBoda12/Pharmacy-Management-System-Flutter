import 'package:flutter/material.dart';

class CheckoutForm extends StatefulWidget {
  const CheckoutForm({super.key});

  @override
  State<CheckoutForm> createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  final _formKey = GlobalKey<FormState>();
  String? address;
  String? city = '';
  String? int = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Text(
                'Shipping info',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                onSaved: (newValue) => address = newValue,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.background,
                  hintText: 'Enter your address',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.background,
                  hintText: 'Enter your city',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your zip code';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.background,
                  hintText: 'Enter your Zip code',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Payment Method',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              ListTile(
                title: Text(
                  'Cash',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                leading: Icon(
                  Icons.payments,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                    }
                  },
                  child: const Text('Place Order'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
