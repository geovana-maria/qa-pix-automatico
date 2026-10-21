# 1. Análise e design de testes

## Cenários mais críticos

1. Cobrança sem consentimento
2. Cobrança após o cancelamento
3. Idempotência na cobrança
4. Ausência de retry em caso de falha na primeira tentativa
5. Ausência de parâmetros no momento da autorização (valor máximo por parcela, periodicidade, data limite da autorização)
6. Cobrança fora da vigência
7. Ausência de rastreabilidade (log)
8. Saldo insuficiente tratado incorretamente
9. Usuário não notificado

## Fluxos principais

- Consentimento > Cobrança agendada > Execução > Sucesso > Log (entre os processos)
- Consentimento > Cobrança agendada > Execução > Falha (saldo insuficiente) > Log (entre os processos)
- Não consentimento > Não agendamento > Não execução

## Fluxos alternativos

- Consentimento > Cobrança agendada > Cancelamento da autorização > Não execução > Log (entre os processos)
- Consentimento > Cancelamento da autorização > Cancelar agendamento > Não execução > Log (entre os processos)
- Consentimento > Cobrança agendada > Cancelamento durante a execução > Comportamento esperado a alinhar > Log (entre os processos)

## Estados do sistema

| Entidade | Estados |
|---|---|
| Consentimento | autorizado, não autorizado, expirado, cancelado |
| Execução | agendada, em processamento, concluída, cancelada |
| Cobrança | aprovada, rejeitada |

## Técnicas de teste

- **Particionamento de equivalência:** estados do consentimento (autorizado, expirado, não autorizado, cancelado) como classes distintas de entrada.
- **Valor limite:** valores mínimo e máximo de cobrança e datas da autorização.
- **Tabela de decisão:** combinações entre consentimento, execução e cobrança para identificar o resultado esperado em cada uma.
