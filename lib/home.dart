import 'package:flutter/material.dart';
import 'package:mantovani_net/app_drawer.dart';
import 'package:mantovani_net/footer.dart';
import 'package:mantovani_net/projects_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Portfólio'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Sobre Minha Empresa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Somos uma empresa especializada em desenvolvimento de aplicativos móveis, '
                'focados em criar soluções inovadoras e funcionais para nossos clientes. '
                'Com experiência em desenvolvimento multiplataforma, entregamos aplicativos '
                'de alta qualidade que atendem às necessidades específicas de cada projeto.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProjectsPage(),
                    ),
                  );
                },
                child: const Text('Ver Projetos'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ContactFooter(),
    );
  }
}
