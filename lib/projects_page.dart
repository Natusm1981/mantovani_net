import 'package:flutter/material.dart';
import 'package:mantovani_net/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Projetos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProjectCard(
            title: 'Projeto 1',
            description: 'Descrição detalhada do primeiro aplicativo',
            images: [
              'assets/projeto1_imagem1.png',
              'assets/projeto1_imagem2.png',
            ],
          ),
          SizedBox(height: 16),
          ProjectCard(
            title: 'Projeto 2',
            description: 'Descrição detalhada do segundo aplicativo',
            images: [
              'assets/projeto2_imagem1.png',
              'assets/projeto2_imagem2.png',
            ],
          ),
        ],
      ),
    );
  }
}
