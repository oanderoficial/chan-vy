#!/usr/bin/env bash

# Função de Ajuda
exibir_ajuda() {
  clear
  echo -e "[+] Uso do Script:  ./chan-vy.sh"
  echo -e "[+] Opções Disponíveis:"
  echo -e "  1. Escolha uma categoria de ferramentas."
  echo -e "  2. Digite o número da ferramenta desejada."
  echo -e "  3. Sair do script."

  echo -e "[+] Exemplos:"
  echo -e "  - Para baixar uma ferramenta específica, siga as instruções no menu."
  echo -e "  - Para sair do script, escolha a opção 'exit'."

  echo -e "[+] Observações:"
  echo -e "  - Certifique-se de ter o Curl e o Git instalado no seu sistema antes de usar este script."
  echo -e "  - Algumas ferramentas podem exigir dependências adicionais. Verifique os requisitos nos repositórios."

  echo -e "[+] Informações Adicionais:"
  echo -e "  - Este script foi desenvolvido por Anderson.b.Silva (oanderoficial)."
  echo -e "  - Versão atual: v.1.2"
  echo ""
}


# Menu principal
exibir_ajuda