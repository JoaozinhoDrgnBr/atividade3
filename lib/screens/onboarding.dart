import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _titles = [
    'Bem-vindo ao App!',
    'Explore nossos recursos.',
    'Comece agora mesmo!',
  ];

  final List<String> _titlesEn = [
    'Welcome to the App!',
    'Explore our features.',
    'Get started now!',
  ];

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final isEnglish = locale == 'en';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _titles.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    isEnglish ? _titlesEn[index] : _titles[index],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _titles.length,
              (index) => GestureDetector(
                onTap: () {
                  // Navega para a página correspondente ao clicar no indicador
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: _currentPage == index ? 16 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/splash', // Navega para a tela de Splash
              );
            },
            child: Text(isEnglish ? 'Start' : 'Começar'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}