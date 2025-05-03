# atividade3

## 🌍 Flutter Onboarding Multilíngue

- Este projeto é um exemplo de aplicativo Flutter que demonstra:
- Splash screen nativa com logo usando `flutter_native_splash`
- Splash Flutter com animação de fade-in
- Onboarding multilíngue (Português/Inglês), baseado no idioma do sistema
- Página de boas-vindas com mensagem no idioma selecionado

## 📲 Pré-requisitos

- Flutter 3.x instalado

- Dart SDK

- Android Studio ou VSCode com extensões Flutter/Dart

- Emulador Android ou dispositivo físico

## 🚀 Como executar

1. **Clone o repositório:**

```bash
   git clone https://github.com/JoaozinhoDrgnBr/atividade3.git
   cd atividade3
   ```

2. **Instale as dependências:**

```bash
    flutter pub get
```

3. **Execute o app:**

 ```bash
    flutter run
 ```

## 📦 Pacotes utilizados

| **Pacote**            | **Função**                                  |
|-----------------------|---------------------------------------------|
| `flutter_native_splash` | Splash screen nativa personalizada com logo |
| `flutter_locations`     | Suporte a múltiplos idiomas                 |
| `intl`                  | Traduções e internacionalização             |

## 🎬 Animações e fluxo do app

1. **Splash nativa:**
Mostra o logo do app de forma instantânea ao abrir (sem white screen). Configurada via `flutter_native_splash.`

2. **Splash Flutter com fade-in:**
Após a splash nativa, o app exibe um logo com efeito de fade-in animado.

3. **Onboarding multilíngue:**
Exibe uma sequência de telas com informações e imagens, no idioma detectado automaticamente (Português ou Inglês).

4. **Página de boas-vindas:**
Após o onboarding, o app mostra uma mensagem de boas-vindas com base no idioma.

## 🌐 Suporte a Idiomas
O idioma é detectado automaticamente com base na configuração do sistema do dispositivo.
Idiomas suportados:

- 🇧🇷 Português

- 🇺🇸 Inglês

## 🖼️ Exemplos (prints)
📱 **Splash nativa**

📱 **Onboarding em Português**

📱 **Onboarding em Inglês**

🛠️ Configuração do flutter_native_splash
Adicione ao pubspec.yaml:

```
flutter_native_splash:
  color: "#ffffff"
  image: assets/images/logo.png
  android: true
  ios: true
```

Gere a splash com:

```
flutter pub run flutter_native_splash:create
```
