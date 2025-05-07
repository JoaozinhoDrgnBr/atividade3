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

![image](https://github.com/user-attachments/assets/f55297e2-fccf-47af-887a-027946afc14e)

📱 **Onboarding em Português**

![](https://github.com/user-attachments/assets/b8071455-f346-43b4-9713-745c229ac1b7) ![image](https://github.com/user-attachments/assets/8bb1520a-2df8-4d2f-8e07-701ad29aba6d) ![image](https://github.com/user-attachments/assets/b4b8d844-6657-45c9-b28d-5129e49892d8)


📱 **Onboarding em Inglês**

![image](https://github.com/user-attachments/assets/2cbb405d-402d-48cf-82d5-5bbf77948940) ![image](https://github.com/user-attachments/assets/c4f98634-13c2-4120-9ee0-2b5a081465fc) ![image](https://github.com/user-attachments/assets/acc13ee9-dc49-4f6d-b747-62c902472c87)


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
