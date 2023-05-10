import 'package:flutter/material.dart';
import 'package:responsivity_app/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 2)),
              onPressed: () {},
              child: const Text(
                'Fazer Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 39,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: () {},
              child: const Text('Cadastre-se',
                  style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
