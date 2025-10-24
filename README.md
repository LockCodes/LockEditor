# LockEditor

**Map Editor oficial do MTA com melhorias para a comunidade de modelagem.**

Este projeto é uma versão aprimorada do Map Editor do Multi Theft Auto, desenvolvido inicialmente para integração com o sistema LockCode, mas disponibilizado gratuitamente para toda a comunidade.

---

## Sobre o Projeto

O LockEditor nasceu da necessidade de facilitar o trabalho de modeladores 3D no MTA, oferecendo recursos que tornam o processo de criação e gestão de mapas customizados mais intuitivo e eficiente.

Nosso objetivo é simples: melhorar a experiência de quem cria conteúdo para o MTA, sem custos e sem barreiras.

## O Que Mudou

### Sistema de Custom Objects
- Suporte nativo para objetos customizados com alocação dinâmica de IDs
- Propriedades `customObject` e `customObjectName` para melhor organização
- Integração facilitada entre mapas e modelos customizados

### Browser Aprimorado
- Busca otimizada com resultados ordenados por ID
- Match exato sempre aparece primeiro nos resultados
- Suporte para visualização de modelos customizados (IDs 0-19999)
- Sistema de cache para melhor performance

### Compatibilidade
Todas as melhorias mantêm 100% de compatibilidade com o Map Editor original. Seus mapas continuam funcionando normalmente, tanto no LockEditor quanto no editor padrão do MTA.

## Instalação

1. Clone ou baixe este repositório
2. Navegue até a pasta de recursos do editor do seu servidor MTA:
   ```
   C:\Program Files (x86)\MTA San Andreas 1.6\server\mods\deathmatch\resources\[editor]
   ```
3. **Faça backup dos arquivos originais** (recomendado)
4. Delete todos os arquivos e ponha os novos.
5. Dê um refresh, e starte a resource: `start editor`
6. Acesse o editor normalmente.

## Contribuindo

Este é um projeto da comunidade, para a comunidade. Contribuições são muito bem-vindas!

### Como Contribuir
- Reporte bugs através da aba **Issues** aqui no GitHub
- Sugira melhorias e novos recursos
- Envie Pull Requests com correções ou funcionalidades
- Ajude na documentação
- Compartilhe o projeto com outros desenvolvedores

### Diretrizes
- Mantenha a compatibilidade com o editor original do MTA
- Teste suas mudanças antes de enviar um PR
- Documente alterações significativas
- Siga as convenções de código existentes

## Roadmap

Estamos constantemente trabalhando em melhorias. Algumas ideias para o futuro:

- Interface modernizada
- Ferramentas avançadas de manipulação de objetos
- Melhor gestão de recursos de modelagem
- Sistema de templates e presets
- Integração com ferramentas de desenvolvimento
- Sistema de camera para gravação de vídeos.

Tem uma ideia? Abra uma issue para discutirmos!

## Tecnologias

- Lua (cliente e servidor)
- MTA:SA SDK
- XML para configurações e mapas

## Licença

Este projeto é baseado no Map Editor oficial do MTA:SA, mantido sob os mesmos termos e disponibilizado gratuitamente para uso, modificação e distribuição.

## Créditos

- **MTA Team**: Pelo editor original que serviu de base
- **LockCode**: Pela iniciativa e desenvolvimento das melhorias
- **Comunidade MTA**: Por feedback, testes e contribuições

---

**LockEditor** - Desenvolvido pela comunidade, para a comunidade.
Para suporte ou dúvidas, visite: [LockCode](https://discord.gg/LockCode)
