<div align="center">

# 🗺️ LockEditor

[![MTA Version](https://img.shields.io/badge/MTA-1.6-blue.svg)](https://mtasa.com)
[![License](https://img.shields.io/badge/License-MTA%20Editor-green.svg)](LICENSE)
[![Lua](https://img.shields.io/badge/Language-Lua-yellow.svg)](https://lua.org)
[![Community](https://img.shields.io/badge/Community-LockCode-purple.svg)](https://discord.gg/LockCode)

**Map Editor oficial do MTA com melhorias para a comunidade de modelagem**

[📖 Documentação](#sobre-o-projeto) • [🚀 Instalação](#instalação) • [🤝 Contribuindo](#contribuindo) • [💬 Suporte](https://discord.gg/LockCode)

</div>

---

## 📋 Sobre o Projeto

O **LockEditor** é uma versão aprimorada do Map Editor do Multi Theft Auto, desenvolvido inicialmente para integração com o sistema LockCode, mas disponibilizado gratuitamente para toda a comunidade.

### 🎯 Objetivo

Facilitar o trabalho de modeladores 3D no MTA, oferecendo recursos que tornam o processo de criação e gestão de mapas customizados mais intuitivo e eficiente.

> **💡 Filosofia**: Melhorar a experiência de quem cria conteúdo para o MTA, sem custos e sem barreiras.

## ✨ Principais Melhorias

### 🎯 Sistema de Custom Objects
- ✅ Suporte nativo para objetos customizados com alocação dinâmica de IDs
- ✅ Propriedades `customObject` e `customObjectName` para melhor organização
- ✅ Integração facilitada entre mapas e modelos customizados

### 🔍 Browser Aprimorado
- ✅ Busca otimizada com resultados ordenados por ID
- ✅ Match exato sempre aparece primeiro nos resultados
- ✅ Suporte para visualização de modelos customizados (IDs 0-19999)
- ✅ Sistema de cache para melhor performance

### 🔄 Compatibilidade
> **🛡️ 100% Compatível**: Todas as melhorias mantêm total compatibilidade com o Map Editor original. Seus mapas continuam funcionando normalmente, tanto no LockEditor quanto no editor padrão do MTA.

## 🚀 Instalação

### Pré-requisitos
- MTA:SA Server 1.6 ou superior
- Acesso ao servidor para modificar recursos

### Passo a Passo

1. **📥 Download**
   ```bash
   git clone https://github.com/LockCode/LockEditor.git
   # ou baixe o ZIP
   ```

2. **📁 Localização**
   Navegue até a pasta de recursos do editor:
   ```
   C:\Program Files (x86)\MTA San Andreas 1.6\server\mods\deathmatch\resources\[editor]
   ```

3. **💾 Backup** (⚠️ **OBRIGATÓRIO**)
   ```bash
   # Faça backup dos arquivos originais antes de prosseguir
   ```

4. **🔄 Substituição**
   - Delete todos os arquivos da pasta `[editor]`
   - Copie os novos arquivos do LockEditor

5. **▶️ Ativação**
   ```bash
   # No console do servidor:
   refresh
   start editor
   ```

6. **✅ Verificação**
   - Acesse o editor normalmente
   - Teste as novas funcionalidades

## 🤝 Contribuindo

> **🌟 Este é um projeto da comunidade, para a comunidade!**

### Como Contribuir

| Tipo de Contribuição | Como Fazer |
|---------------------|------------|
| 🐛 **Reportar Bugs** | Use a aba [Issues](https://github.com/LockCode/LockEditor/issues) |
| 💡 **Sugerir Melhorias** | Abra uma issue com a tag `enhancement` |
| 🔧 **Enviar Código** | Faça um Pull Request seguindo nossas diretrizes |
| 📚 **Documentação** | Melhore este README ou adicione guias |
| 📢 **Divulgação** | Compartilhe com outros desenvolvedores |

### 📋 Diretrizes para Contribuição

- ✅ **Compatibilidade**: Mantenha 100% de compatibilidade com o editor original
- ✅ **Testes**: Teste suas mudanças antes de enviar um PR
- ✅ **Documentação**: Documente alterações significativas
- ✅ **Padrões**: Siga as convenções de código existentes
- ✅ **Commits**: Use mensagens de commit descritivas

## 🗺️ Roadmap

> **🚧 Estamos constantemente trabalhando em melhorias!**

### 🎯 Próximas Funcionalidades

| Status | Funcionalidade | Descrição |
|--------|---------------|-----------|
| 🔄 **Em Desenvolvimento** | Interface Modernizada | UI/UX mais intuitiva e responsiva |
| 📋 **Planejado** | Ferramentas Avançadas | Manipulação de objetos mais precisa |
| 📋 **Planejado** | Gestão de Recursos | Melhor organização de assets |
| 💡 **Ideia** | Sistema de Templates | Presets para acelerar o desenvolvimento |
| 💡 **Ideia** | Integração DevTools | Ferramentas de desenvolvimento integradas |
| 💡 **Ideia** | Sistema de Câmera | Gravação de vídeos e screenshots |

> **💭 Tem uma ideia?** Abra uma [issue](https://github.com/LockCode/LockEditor/issues) para discutirmos!

## 🛠️ Tecnologias

<div align="center">

| Tecnologia | Versão | Uso |
|------------|--------|-----|
| ![Lua](https://img.shields.io/badge/Lua-5.1+-blue.svg) | 5.1+ | Linguagem principal |
| ![MTA](https://img.shields.io/badge/MTA:SA-1.6+-green.svg) | 1.6+ | Plataforma base |
| ![XML](https://img.shields.io/badge/XML-Config-orange.svg) | - | Configurações e mapas |

</div>

## 📄 Licença

> **📜 Baseado no Map Editor oficial do MTA:SA**

Este projeto é mantido sob os mesmos termos do editor original e disponibilizado gratuitamente para:
- ✅ **Uso comercial e pessoal**
- ✅ **Modificação e distribuição**
- ✅ **Integração em projetos**

## 👥 Créditos

<div align="center">

| Contribuidor | Contribuição |
|--------------|--------------|
| **🎮 MTA Team** | Editor original que serviu de base |
| **🔒 LockCode** | Iniciativa e desenvolvimento das melhorias |
| **🌟 Comunidade MTA** | Feedback, testes e contribuições |

</div>

---

<div align="center">

### 🚀 **LockEditor**
**Desenvolvido pela comunidade, para a comunidade**

[![Discord](https://img.shields.io/badge/Discord-LockCode-7289DA?style=for-the-badge&logo=discord)](https://discord.gg/LockCode)
[![GitHub](https://img.shields.io/badge/GitHub-LockEditor-181717?style=for-the-badge&logo=github)](https://github.com/LockCode/LockEditor)

**Para suporte ou dúvidas, visite nosso Discord!**

</div>
