# language: pt
Funcionalidade: PIX Automático
  Como pagador
  Quero autorizar cobranças recorrentes com consentimento prévio
  Para que as cobranças ocorram somente dentro do que autorizei

  Contexto:
    Dado que existe uma autorização com valor máximo por parcela, periodicidade e data limite

  Cenário: Cobrança executada com consentimento válido
    Dado que o consentimento está "autorizado"
    E que há uma cobrança agendada dentro da vigência
    Quando a cobrança é executada na data agendada
    Então a cobrança é aprovada
    E o evento é registrado em log

  Cenário: Cobrança não é agendada sem consentimento
    Dado que o consentimento está "não autorizado"
    Quando uma cobrança é solicitada
    Então a cobrança não é agendada
    E a execução não ocorre

  Cenário: Cobrança não ocorre após o cancelamento da autorização
    Dado que existe uma cobrança agendada
    E que a autorização é cancelada antes da data de execução
    Quando chega a data da cobrança
    Então a cobrança não é executada
    E o cancelamento e a não execução são registrados em log

  Cenário: Cobrança duplicada é rejeitada (idempotência)
    Dado que uma cobrança já foi executada com sucesso
    Quando a mesma cobrança é enviada novamente
    Então a segunda tentativa é rejeitada
    E o pagador não é cobrado duas vezes

  Cenário: Saldo insuficiente é tratado de forma controlada
    Dado que o pagador não possui saldo suficiente
    Quando a cobrança é executada
    Então a cobrança é rejeitada
    E o pagador é notificado
    E a falha é registrada em log

  Cenário: Cobrança fora da vigência não é executada
    Dado que o consentimento está "expirado"
    Quando chega a data da cobrança
    Então a cobrança não é executada
    E o motivo é registrado em log
