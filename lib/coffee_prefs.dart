import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength++ : 1;
    });
  }

  void incSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars++ : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            FilledButton(onPressed: incStrength, child: Text('+')),
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            if (sugars == 0) const Text('No Sugars....'),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            FilledButton(onPressed: incSugars, child: Text('+')),
          ],
        ),
      ],
    );
  }
}
