Algoritmo "Simulador de Vida"

Var

   Nome, Profissao, Tecla : Caracter

   Aposta_roleta, Aposta_niquel, Retorno_roleta, Saldo_banco, Saldo_carteira, Quantidade_deposito, Quantidade_saque, Salario_entregador, Salario_atendente, Salario_programador : Real

   Opcao, Opcao_cor, Opcao_cassino, Sorteio_roleta, Opcao_banco, Opcao_trabalho, Opcao_entrevista, Apostas_dia, Resposta_entregador1, Resposta_entregador2, Resposta_entregador3, Resposta_entregador4, Resposta_entregador5, Acertos_entregador, Resposta_atendente1, Resposta_atendente2, Resposta_atendente3, Resposta_atendente4, Resposta_atendente5, Acertos_atendente, Resposta_programador1, Resposta_programador2, Resposta_programador3, Resposta_programador4, Resposta_programador5, Acertos_programador, Quantidade_entregas, Quantidade_turnos, Quantidade_projetos, transf1, transf2, transf3, resposta_transf1, resposta_transf2, resposta_transf3 : Inteiro

   Historico : vetor[1..100] de real
   Descricao : vetor[1..100] de caracter
   Quantidade_ganhos, i : Inteiro

   Matriz : vetor[1..3, 1..3] de inteiro
   Linha, Coluna : Inteiro
   Premio_total, Premio_linha : Real

   // Catalogo e inventario
   Opcao_mercado, Opcao_concessionaria, Opcao_imobiliaria, Opcao_item : Inteiro
   Total_ganhos, Patrimonio, Preco_compra : Real

   // Blackjack
   Opcao_blackjack, Total_jogador, Total_banca, Carta_visivel_banca : Inteiro
   Aposta_blackjack, Retorno_blackjack : Real
   Carta, Ases_jogador, Ases_banca, Pontos_jogador, Pontos_banca, Natural_jogador, Natural_banca : Inteiro

   // Historico com os 100 registros mais recentes
   Quantidade_historico : Inteiro

   // Itens e valores do inventario
   Item_nome : vetor[1..60] de caracter
   Item_preco : vetor[1..60] de real
   Item_qtd : vetor[1..60] de inteiro
   Item_valor : vetor[1..60] de real
   Total_gasto, Valor_categoria, Total_desvalorizado : Real
   Qtd_categoria, Itens_total, Idx : Inteiro

   // Data
   Dias_passados, Meses_passados, Dia_do_mes, Mes_atual, Ano_atual : Inteiro
   Data_txt : Caracter

   // Eventos, economia e emprestimos
   Evento_hoje, Resposta_evento : Inteiro
   Desconto_supermercado, Juros_banco : Real
   Divida_emprestimo, Parcela_emprestimo, Valor_emprestimo, Valor_pago : Real
   Emprestimo_ativo, Prazo_emprestimo, Meses_restantes : Inteiro
   Investimento_pendente, Dia_resgate_investimento : Inteiro
   Investimentos_total : Real

   // Progresso de cada carreira
   Dias_carreira : vetor[1..3] de inteiro
   Nivel_carreira : vetor[1..3] de inteiro
   Nome_nivel : vetor[1..3, 1..5] de caracter
   Multiplicador_carreira : vetor[1..3, 1..5] de real
   Dias_trabalhados_total : Inteiro
   // Limites compartilhados entre todas as profissoes.
   Trabalhos_hoje, Horas_extras_hoje : Inteiro
   Energia, Horas_extras_pedidas, Horas_extras_possiveis : Inteiro
   Pagamento_expediente : Real

   // Conquistas e objetivo final
   Conquista : vetor[1..12] de inteiro
   Vitoria, Opcao_patrimonio : Inteiro

   // Cassino
   Indice_apostas, Apostou_hoje, Total_apostas, Dias_sem_apostar : Inteiro

   // Empresas independentes (ate 10)
   Qtd_empresas, Opcao_empresa, Opcao_admin, Empresa_selecionada : Inteiro
   Empresa_ativa : vetor[1..10] de inteiro
   Empresa_nome : vetor[1..10] de caracter
   Empresa_tipo : vetor[1..10] de inteiro
   Empresa_carreira : vetor[1..10] de inteiro
   Empresa_nivel : vetor[1..10] de inteiro
   Empresa_funcionarios : vetor[1..10] de inteiro
   Empresa_unidades : vetor[1..10] de inteiro
   Empresa_reputacao : vetor[1..10] de inteiro
   Empresa_meses : vetor[1..10] de inteiro
   Empresa_caixa : vetor[1..10] de real
   Empresa_capital : vetor[1..10] de real
   Empresa_base : vetor[1..10] de real
   Empresa_margem : vetor[1..10] de real
   Empresa_faturamento : vetor[1..10] de real
   Empresa_despesas : vetor[1..10] de real
   Empresa_lucro : vetor[1..10] de real
   Empresa_divida : vetor[1..10] de real
   Valor_empresa_total : Real

   // Saude
   Vida, Fome, Sede, Doente, Internado : Inteiro
   Opcao_saude, Pontos_recuperar, Item_saude : Inteiro
   Custo_saude : Real

   Digito : vetor[0..9] de caracter
   Texto_2d : vetor[0..99] de caracter

   // Empregos e entrevistas
   Nome_cargo : vetor[1..3] de caracter
   Unidade_cargo : vetor[1..3] de caracter
   Salario_cargo : vetor[1..3] de real
   Pergunta : vetor[1..15] de caracter
   Opcao_a : vetor[1..15] de caracter
   Opcao_b : vetor[1..15] de caracter
   Passou, Cargo_atual, Transf, Resposta_transf, Qtd_transferencias, Reprovacoes : Inteiro


   // Mercado de trabalho e curriculo
   Escolaridade_nivel, Opcao_estudo, Curso_escolhido : inteiro
   Curso_feito : vetor[1..3] de inteiro
   Experiencia_total : vetor[1..3] de inteiro
   Melhor_cargo : vetor[1..3] de inteiro
   Historico_empregos : vetor[1..100] de caracter
   Historico_qtd : inteiro
   Empregador_atual : caracter
   Inicio_emprego, Desempenho, Advertencias, Faltas_seguidas : inteiro
   Falhas_graves, Dias_desempenho_baixo, Ultimo_aumento : inteiro
   Aumento_atual, Salario_oferta : real
   Vaga_ativa : vetor[1..12] de inteiro
   Vaga_profissao, Vaga_nivel, Vaga_quantidade : vetor[1..12] de inteiro
   Vaga_prazo, Vaga_fim, Vaga_concorrencia : vetor[1..12] de inteiro
   Vaga_empresa : vetor[1..12] de caracter
   Vaga_salario : vetor[1..12] de real
   Candidatura_ativa, Candidatura_vaga, Candidatura_cargo : inteiro
   Candidatura_prazo, Candidatura_pontos, Candidatura_tipo, Candidatura_vaga_fim, Candidatura_faixa : inteiro
   Demissoes_total, Advertencias_historicas : inteiro
   Candidatura_empresa : caracter
   Candidatura_salario : real
   Escolha_vaga, Resposta_selecao, Nota_entrevista, Opcao_ajuda : inteiro
   Emprego_id, Qualidade_profissional, Contador_eventos : inteiro

   // Rotinas do jogo

// Registra a passagem por uma empresa sem apagar a experiencia.
procedimento Guardar_historico(motivo : caracter)
inicio
   se(Profissao <> "Desempregado") entao
      se(Historico_qtd < 100) entao
         Historico_qtd <- Historico_qtd + 1
         Historico_empregos[Historico_qtd] <- Empregador_atual + " - " + Profissao + " (" + motivo + ")"
      fimse
   fimse
fimprocedimento

procedimento Encerrar_emprego(motivo : caracter)
inicio
   Guardar_historico(motivo)
   Demissoes_total <- Demissoes_total + 1
   Profissao <- "Desempregado"
   Empregador_atual <- ""
   Emprego_id <- 0
   Aumento_atual <- 0
   Desempenho <- 70
   Advertencias <- 0
   Falhas_graves <- 0
   Faltas_seguidas <- 0
   Dias_desempenho_baixo <- 0
   escreval("Seu contrato terminou: ", motivo, ".")
   escreval("Seu curriculo e experiencia foram mantidos.")
fimprocedimento

procedimento Contratar(cargo : inteiro; empresa : caracter; oferta : real)
inicio
   se(Profissao <> "Desempregado") entao
      Guardar_historico("mudanca de empresa")
   fimse
   Profissao <- Nome_cargo[cargo]
   Emprego_id <- cargo
   Empregador_atual <- empresa
   Salario_oferta <- oferta
   Aumento_atual <- 0
   Inicio_emprego <- Dias_passados
   Ultimo_aumento <- Dias_passados
   Desempenho <- 70
   Advertencias <- 0
   Falhas_graves <- 0
   Faltas_seguidas <- 0
   Dias_desempenho_baixo <- 0
   escreval("Contratado pela ", Empregador_atual, " como ", Profissao, ".")
   escreval("Pagamento-base: R$ ", Salario_oferta:0:2, " por ", Unidade_cargo[cargo], ".")
fimprocedimento

// Vagas possuem prazo em dias, cargo, exigencias e concorrencia.
procedimento Criar_vaga(k : inteiro)
var
   faixa, periodo : inteiro
inicio
   Vaga_profissao[k] <- ((k - 1) mod 3) + 1
   faixa <- ((k - 1) div 3) + 1
   se(faixa > 3) entao
      faixa <- 1
   fimse
   Vaga_nivel[k] <- faixa
   Vaga_ativa[k] <- 1
   Vaga_quantidade[k] <- 1 + randi(3)
   Vaga_concorrencia[k] <- faixa * 4 + randi(8)
   periodo <- randi(4) + 1
   escolha periodo
      caso 1
         Vaga_prazo[k] <- 3
      caso 2
         Vaga_prazo[k] <- 5
      caso 3
         Vaga_prazo[k] <- 7
      outrocaso
         Vaga_prazo[k] <- 10
   fimescolha
   Vaga_fim[k] <- Dias_passados + Vaga_prazo[k]
   escolha Vaga_profissao[k]
      caso 1
         escolha faixa
            caso 1
               Vaga_empresa[k] <- "Central de Entregadores"
            caso 2
               Vaga_empresa[k] <- "Transportadora Regional"
            outrocaso
               Vaga_empresa[k] <- "Logistica Nacional"
         fimescolha
      caso 2
         escolha faixa
            caso 1
               Vaga_empresa[k] <- "Supermercado"
            caso 2
               Vaga_empresa[k] <- "Rede de Mercados"
            outrocaso
               Vaga_empresa[k] <- "Central de Atendimento"
         fimescolha
      outrocaso
         escolha faixa
            caso 1
               Vaga_empresa[k] <- "Empresa de Tecnologia"
            caso 2
               Vaga_empresa[k] <- "Estudio de Software"
            outrocaso
               Vaga_empresa[k] <- "Tecnologia Corporativa"
         fimescolha
   fimescolha
   Vaga_salario[k] <- Salario_cargo[Vaga_profissao[k]] * (1 + (faixa - 1) * 0.20)
fimprocedimento

procedimento Iniciar_vagas
var k : inteiro
inicio
   para k de 1 ate 12 faca
      Criar_vaga(k)
   fimpara
fimprocedimento

procedimento Atualizar_vagas
var k, p, achou : inteiro
inicio
   // Vagas encerradas so sao substituidas quando o dia muda.
   para k de 1 ate 12 faca
      se(Vaga_ativa[k] = 1) e (Dias_passados >= Vaga_fim[k]) entao
         Vaga_ativa[k] <- 0
      fimse
      se(Vaga_ativa[k] = 0) entao
         se(randi(100) < 55) entao
            Criar_vaga(k)
         fimse
      fimse
   fimpara
   // Pelo menos uma vaga de entrada para cada profissao.
   para p de 1 ate 3 faca
      achou <- 0
      para k de 1 ate 12 faca
         se(Vaga_ativa[k] = 1) e (Vaga_profissao[k] = p) e (Vaga_nivel[k] = 1) entao
            achou <- 1
         fimse
      fimpara
      se(achou = 0) entao
         Criar_vaga(p)
      fimse
   fimpara
fimprocedimento

procedimento Mostrar_requisitos(faixa : inteiro; cargo : inteiro)
inicio
   escolha faixa
      caso 1
         escreval("Requisitos: sem experiencia ou curso obrigatorio.")
      caso 2
         escreval("Requisitos: ensino medio, 8 expedientes de experiencia")
         escreval("e curso de ", Nome_cargo[cargo], ".")
      outrocaso
         escreval("Requisitos: formacao tecnica, 25 expedientes")
         escreval("e curso de ", Nome_cargo[cargo], ".")
   fimescolha
fimprocedimento

procedimento Consultar_vagas
var k, sobra, abertas : inteiro
inicio
   escreval("========== VAGAS ABERTAS ==========")
   abertas <- 0
   para k de 1 ate 12 faca
      se(Vaga_ativa[k] = 1) e (Vaga_quantidade[k] > 0) entao
         abertas <- abertas + 1
         sobra <- Vaga_fim[k] - Dias_passados
         escreval(k, " - ", Vaga_empresa[k], " | ", Nome_cargo[Vaga_profissao[k]])
         escreval("    R$ ", Vaga_salario[k]:0:2, " por ", Unidade_cargo[Vaga_profissao[k]], " | ", Vaga_quantidade[k], " vaga(s)")
         escreval("    Inscricoes: ", sobra, " dia(s) restantes")
         Mostrar_requisitos(Vaga_nivel[k], Vaga_profissao[k])
         escreval()
      fimse
   fimpara
   se(abertas = 0) entao
      escreval("Nenhuma vaga aberta. Durma para consultar novas oportunidades.")
   fimse
   se(Candidatura_ativa = 1) entao
      escreval("Processo em andamento: ", Candidatura_empresa)
      escreval("Resultado em ", Candidatura_prazo - Dias_passados, " dia(s).")
   fimse
fimprocedimento

procedimento Consultar_curriculo
var k, n : inteiro
inicio
   escreval("========== CURRICULO ==========")
   escreval("Nome: ", Nome)
   escolha Escolaridade_nivel
      caso 0
         escreval("Escolaridade: ensino fundamental")
      caso 1
         escreval("Escolaridade: ensino medio")
      outrocaso
         escreval("Escolaridade: formacao tecnica")
   fimescolha
   escreval("Cursos e qualificacoes:")
   para k de 1 ate 3 faca
      se(Curso_feito[k] = 1) entao
         escreval("- Curso de ", Nome_cargo[k], " (qualificacao adquirida)")
      fimse
   fimpara
   escreval("Experiencia total: ", Dias_trabalhados_total, " expedientes")
   escreval("Demissoes: ", Demissoes_total, " | Advertencias no historico: ", Advertencias_historicas)
   para k de 1 ate 3 faca
      escreval(Nome_cargo[k], ": ", Experiencia_total[k], " expedientes")
      se(Experiencia_total[k] > 0) entao
         escreval("  Cargos ocupados:")
         para n de 1 ate Melhor_cargo[k] faca
            escreval("  - ", Nome_nivel[k, n])
         fimpara
      fimse
   fimpara
   escreval("Empregos anteriores:")
   se(Historico_qtd = 0) entao
      escreval("Nenhum registrado.")
   fimse
   para k de 1 ate Historico_qtd faca
      escreval("- ", Historico_empregos[k])
   fimpara
   escreval("Habilidades: experiencia pratica nas carreiras acima.")
   se(Profissao <> "Desempregado") entao
      escreval("Emprego atual: ", Empregador_atual, " - ", Profissao)
      escreval("Desempenho: ", Desempenho, "/100 | Advertencias: ", Advertencias)
   fimse
fimprocedimento

procedimento Menu_estudos
var preco, custo_original : real
inicio
   escreval("========== ESTUDOS ==========")
   escreval("Escolaridade atual: nivel ", Escolaridade_nivel, " de 2")
   escreval("1 - Concluir ensino medio (R$ 300)")
   escreval("2 - Concluir formacao tecnica (R$ 1200)")
   escreval("3 - Curso de Entregador (R$ 400)")
   escreval("4 - Curso de Atendente (R$ 750)")
   escreval("5 - Curso de Programador (R$ 1200)")
   escreval("0 - Voltar")
   escreva("Escolha: ")
   leia(Opcao_estudo)
   preco <- 0
   se(Opcao_estudo = 1) e (Escolaridade_nivel = 0) entao
      preco <- 300
   fimse
   se(Opcao_estudo = 2) e (Escolaridade_nivel = 1) entao
      preco <- 1200
   fimse
   se(Opcao_estudo >= 3) e (Opcao_estudo <= 5) entao
      Curso_escolhido <- Opcao_estudo - 2
      se(Curso_feito[Curso_escolhido] = 0) entao
         preco <- 400
         se(Curso_escolhido = 2) entao
            preco <- 750
         fimse
         se(Curso_escolhido = 3) entao
            preco <- 1200
         fimse
      fimse
   fimse
   custo_original <- preco
   se(preco > 0) entao
      se(Saldo_banco + Saldo_carteira >= preco) entao
         se(Saldo_banco >= preco) entao
            Saldo_banco <- Saldo_banco - preco
         senao
            preco <- preco - Saldo_banco
            Saldo_banco <- 0
            Saldo_carteira <- Saldo_carteira - preco
            preco <- 0
         fimse
         Total_gasto <- Total_gasto + custo_original
         se(Opcao_estudo = 1) ou (Opcao_estudo = 2) entao
            Escolaridade_nivel <- Escolaridade_nivel + 1
            escreval("Escolaridade atualizada no curriculo.")
         senao
            Curso_feito[Curso_escolhido] <- 1
            escreval("Curso concluido: ", Nome_cargo[Curso_escolhido], ".")
         fimse
      senao
         escreval("Saldo insuficiente para esse estudo.")
      fimse
   senao
      se(Opcao_estudo <> 0) entao
         escreval("Curso ja concluido ou escolaridade ainda nao liberada.")
      fimse
   fimse
fimprocedimento

// Uma entrevista curta, com situacoes que exigem decisoes.
procedimento Entrevista_nova(cargo : inteiro)
var
   k, pergunta_id, resp, certa, rodada : inteiro
inicio
   rodada <- randi(3)
   Nota_entrevista <- 0
   para k de 1 ate 3 faca
      pergunta_id <- ((rodada + k - 1) mod 3) + 1
      escreval()
      escreval("Pergunta ", k, " de 3")
      se(cargo = 1) entao
         escolha pergunta_id
            caso 1
               escreval("Um endereco esta incompleto. O que voce faz?")
               escreval("1 - Confirmo o endereco antes de sair.")
               escreval("2 - Entrego em qualquer lugar proximo.")
               certa <- 1
            caso 2
               escreval("O transito atrasou uma entrega.")
               escreval("1 - Ignoro o prazo combinado.")
               escreval("2 - Aviso o cliente e atualizo o prazo.")
               certa <- 2
            outrocaso
               escreval("Um pacote chegou com avaria.")
               escreval("1 - Registro o problema e aviso a equipe.")
               escreval("2 - Entrego sem mencionar.")
               certa <- 1
         fimescolha
      senao
         se(cargo = 2) entao
            escolha pergunta_id
               caso 1
                  escreval("Um cliente reclama de uma cobranca.")
                  escreval("1 - Discuto com ele.")
                  escreval("2 - Confiro o valor e procuro resolver.")
                  certa <- 2
               caso 2
                  escreval("O caixa apresenta uma diferenca.")
                  escreval("1 - Aviso o responsavel e confiro os registros.")
                  escreval("2 - Altero os numeros para fechar.")
                  certa <- 1
               outrocaso
                  escreval("A fila cresceu e um colega precisa de ajuda.")
                  escreval("1 - Ignoro o colega.")
                  escreval("2 - Organizo o atendimento com a equipe.")
                  certa <- 2
            fimescolha
         senao
            escolha pergunta_id
               caso 1
                  escreval("Uma mudanca quebrou um teste do projeto.")
                  escreval("1 - Investigo a causa antes de entregar.")
                  escreval("2 - Escondo a falha.")
                  certa <- 1
               caso 2
                  escreval("O pedido do cliente ficou confuso.")
                  escreval("1 - Programo sem confirmar.")
                  escreval("2 - Valido os requisitos antes de seguir.")
                  certa <- 2
               outrocaso
                  escreval("Um colega encontra um erro no seu codigo.")
                  escreval("1 - Rejeito o comentario.")
                  escreval("2 - Reviso o codigo e corrijo se preciso.")
                  certa <- 2
            fimescolha
         fimse
      fimse
      escreva("Resposta (1 ou 2): ")
      leia(resp)
      se(resp = certa) entao
         Nota_entrevista <- Nota_entrevista + 1
      fimse
   fimpara
   escreval("Entrevista concluida. Aguarde a avaliacao da empresa.")
fimprocedimento

procedimento Candidatar(modo_candidatura : inteiro)
var
   k, cargo, faixa, criterio : inteiro
inicio
   se(Candidatura_ativa = 1) entao
      escreval("Voce ja tem uma candidatura em andamento.")
   senao
      Consultar_vagas
      escreva("Numero da vaga (0 para cancelar): ")
      leia(Escolha_vaga)
      se(Escolha_vaga >= 1) e (Escolha_vaga <= 12) entao
         k <- Escolha_vaga
         cargo <- Vaga_profissao[k]
         faixa <- Vaga_nivel[k]
         criterio <- 1
         se(Vaga_ativa[k] <> 1) ou (Vaga_quantidade[k] <= 0) entao
            criterio <- 0
            escreval("Essa vaga ja foi encerrada.")
         fimse
         se(modo_candidatura = 1) e (Profissao <> "Desempregado") entao
            criterio <- 0
            escreval("Para trocar de empresa, use Transferencia.")
         fimse
         se(modo_candidatura = 2) e (Profissao = "Desempregado") entao
            criterio <- 0
            escreval("Voce pode se candidatar sem pagar transferencia.")
         fimse
         se(faixa >= 2) entao
            se(Escolaridade_nivel < 1) ou (Experiencia_total[cargo] < 8) ou (Curso_feito[cargo] = 0) entao
               criterio <- 0
            fimse
         fimse
         se(faixa = 3) entao
            se(Escolaridade_nivel < 2) ou (Experiencia_total[cargo] < 25) entao
               criterio <- 0
            fimse
         fimse
         se(criterio = 0) entao
            escreval("Curriculo nao atende aos requisitos, ou vaga indisponivel.")
            Mostrar_requisitos(faixa, cargo)
         senao
            se(modo_candidatura = 2) e (Saldo_banco < 1500) entao
               escreval("Transferencia exige R$ 1500 no banco.")
            senao
               se(modo_candidatura = 2) entao
                  escreval("Taxa de transferencia: R$ 1500. Confirmar? 1 - Sim / 2 - Nao")
                  leia(Resposta_selecao)
               senao
                  Resposta_selecao <- 1
               fimse
               se(Resposta_selecao = 1) entao
                  se(modo_candidatura = 2) entao
                     Saldo_banco <- Saldo_banco - 1500
                     Total_gasto <- Total_gasto + 1500
                  fimse
                  Entrevista_nova(cargo)
                  Candidatura_ativa <- 1
                  Candidatura_vaga <- k
                  Candidatura_vaga_fim <- Vaga_fim[k]
                  Candidatura_faixa <- Vaga_nivel[k]
                  Candidatura_cargo <- cargo
                  Candidatura_empresa <- Vaga_empresa[k]
                  Candidatura_salario <- Vaga_salario[k]
                  Candidatura_tipo <- modo_candidatura
                  Candidatura_prazo <- Dias_passados + 1 + randi(3)
                  Candidatura_pontos <- Nota_entrevista * 12 + Escolaridade_nivel * 4
                  Candidatura_pontos <- Candidatura_pontos + Experiencia_total[cargo] div 3
                  se(Curso_feito[cargo] = 1) entao
                     Candidatura_pontos <- Candidatura_pontos + 10
                  fimse
                  se(Profissao <> "Desempregado") entao
                     Candidatura_pontos <- Candidatura_pontos + (Desempenho - 50) div 5 - Advertencias * 4
                  fimse
                  Candidatura_pontos <- Candidatura_pontos - Vaga_concorrencia[k]
                  se(Demissoes_total > 0) entao
                     Candidatura_pontos <- Candidatura_pontos - 3
                  fimse
                  escreval("Candidatura registrada. Resultado em ", Candidatura_prazo - Dias_passados, " dia(s).")
               senao
                  escreval("Candidatura cancelada.")
               fimse
            fimse
         fimse
      senao
         se(Escolha_vaga <> 0) entao
            escreval("Numero de vaga invalido.")
         fimse
      fimse
   fimse
fimprocedimento

procedimento Resolver_candidatura
var
   aprovada, corte : inteiro
inicio
   se(Candidatura_ativa = 1) e (Dias_passados >= Candidatura_prazo) entao
      escreval()
      escreval("--- RESULTADO DO PROCESSO SELETIVO ---")
      corte <- 22
      se(Candidatura_faixa = 2) entao
         corte <- 37
      fimse
      se(Candidatura_faixa = 3) entao
         corte <- 48
      fimse
      aprovada <- 0
      se(Candidatura_pontos >= corte) entao
         aprovada <- 1
      senao
         // Candidatos proximos do corte ainda podem ser chamados.
         se(Candidatura_pontos >= corte - 7) e (randi(100) < 25) entao
            aprovada <- 1
         fimse
      fimse
      se(aprovada = 1) entao
         escreval("Aprovado na ", Candidatura_empresa, ".")
         Contratar(Candidatura_cargo, Candidatura_empresa, Candidatura_salario)
         se(Vaga_fim[Candidatura_vaga] = Candidatura_vaga_fim) e (Vaga_quantidade[Candidatura_vaga] > 0) entao
            Vaga_quantidade[Candidatura_vaga] <- Vaga_quantidade[Candidatura_vaga] - 1
         fimse
         se(Vaga_fim[Candidatura_vaga] = Candidatura_vaga_fim) e (Vaga_quantidade[Candidatura_vaga] <= 0) entao
            Vaga_ativa[Candidatura_vaga] <- 0
         fimse
         se(Candidatura_tipo = 2) entao
            Qtd_transferencias <- Qtd_transferencias + 1
         fimse
      senao
         escreval("A ", Candidatura_empresa, " nao selecionou seu curriculo.")
         escreval("Voce pode se candidatar a outra vaga.")
         Reprovacoes <- Reprovacoes + 1
      fimse
      Candidatura_ativa <- 0
   fimse
fimprocedimento

procedimento Advertir(motivo : caracter)
inicio
   Advertencias <- Advertencias + 1
   Advertencias_historicas <- Advertencias_historicas + 1
   escreval("Advertencia: ", motivo, " (", Advertencias, "/3)")
   se(Advertencias >= 3) entao
      Encerrar_emprego("acumulo de advertencias")
   fimse
fimprocedimento

procedimento Evento_profissional
var
   evento, decisao, sorte, ajuste : inteiro
inicio
   se(Profissao <> "Desempregado") entao
      Desempenho <- Desempenho + 1
      se(Energia < 60) entao
         Desempenho <- Desempenho - 1
      fimse
      sorte <- randi(100)
      se(sorte < 40) entao
         evento <- randi(4) + 1
         escreval()
         escreval("--- SITUACAO NO TRABALHO ---")
         escolha evento
            caso 1
               escreval("Um colega precisa de ajuda com uma tarefa.")
               escreval("1 - Ajudo quando terminar minha parte.")
               escreval("2 - Ignoro o pedido.")
            caso 2
               se(Profissao = "Entregador") entao
                  escreval("Um cliente informa que o pacote chegou danificado.")
               senao
                  se(Profissao = "Atendente") entao
                     escreval("Um cliente questiona um preco registrado.")
                  senao
                     escreval("Um teste automatizado falhou na ultima alteracao.")
                  fimse
               fimse
               escreval("1 - Verifico o problema e aviso a equipe.")
               escreval("2 - Finjo que nao aconteceu.")
            caso 3
               escreval("O responsavel pede prioridade em uma tarefa.")
               escreval("1 - Explico os prazos e reorganizo a ordem.")
               escreval("2 - Prometo tudo sem verificar.")
            outrocaso
               escreval("Voce percebe uma falha antes de entregar o servico.")
               escreval("1 - Corrijo ou aviso antes de finalizar.")
               escreval("2 - Deixo para alguem descobrir depois.")
         fimescolha
         escreva("Decisao: ")
         leia(decisao)
         ajuste <- 0
         se(decisao = 1) entao
            ajuste <- 3
            Falhas_graves <- 0
            escreval("Boa decisao. Desempenho +3.")
         senao
            se(decisao = 2) entao
               ajuste <- -4
               Falhas_graves <- Falhas_graves + 1
               escreval("A equipe precisou corrigir o problema. Desempenho -4.")
            senao
               escreval("Sem resposta valida. A situacao foi encaminhada ao supervisor.")
               ajuste <- -1
            fimse
         fimse
         Desempenho <- Desempenho + ajuste
         se(Falhas_graves >= 3) entao
            Falhas_graves <- 0
            Advertir("problemas graves repetidos")
         fimse
      fimse
      se(Desempenho > 100) entao
         Desempenho <- 100
      fimse
      se(Desempenho < 0) entao
         Desempenho <- 0
      fimse
      escreval("Desempenho atual: ", Desempenho, "/100")
   fimse
fimprocedimento

procedimento Avaliar_dia_profissional
inicio
   se(Profissao <> "Desempregado") entao
      se(Trabalhos_hoje = 0) e (Doente = 0) e (Internado = 0) e (Energia >= 50) entao
         Faltas_seguidas <- Faltas_seguidas + 1
         se(Faltas_seguidas >= 3) entao
            Faltas_seguidas <- 0
            Desempenho <- Desempenho - 5
            escreval("Voce faltou a tres dias de trabalho seguidos.")
            Advertir("faltas sem justificativa")
         fimse
      senao
         Faltas_seguidas <- 0
      fimse
      se(Profissao <> "Desempregado") entao
         se(Desempenho < 30) entao
            Dias_desempenho_baixo <- Dias_desempenho_baixo + 1
         senao
            Dias_desempenho_baixo <- 0
         fimse
         se(Dias_desempenho_baixo >= 4) entao
            Dias_desempenho_baixo <- 0
            Advertir("desempenho baixo por varios dias")
         fimse
      fimse
      se(Desempenho < 0) entao
         Desempenho <- 0
      fimse
   fimse
fimprocedimento

procedimento Pedir_aumento
var
   pontos, opcao_confirmacao : inteiro
   valor : real
inicio
   se(Profissao = "Desempregado") entao
      escreval("Voce precisa estar empregado para negociar salario.")
   senao
      se(Dias_passados - Ultimo_aumento < 15) entao
         escreval("Nova solicitacao em ", 15 - (Dias_passados - Ultimo_aumento), " dia(s).")
      senao
         se(Aumento_atual >= 0.30) entao
            escreval("Voce chegou ao limite de reajustes deste contrato (30%).")
         senao
            escreval("Pedir aumento a ", Empregador_atual, "?")
            escreval("Desempenho: ", Desempenho, " | Advertencias: ", Advertencias)
            escreval("1 - Solicitar / 0 - Cancelar")
            leia(opcao_confirmacao)
            se(opcao_confirmacao = 1) entao
               Ultimo_aumento <- Dias_passados
               pontos <- Desempenho + (Dias_passados - Inicio_emprego) div 3
               pontos <- pontos + Escolaridade_nivel * 3 + Experiencia_total[Emprego_id] div 4
               se(Curso_feito[Emprego_id] = 1) entao
                  pontos <- pontos + 8
               fimse
               pontos <- pontos - Advertencias * 15
               valor <- 0
               se(pontos >= 105) entao
                  valor <- 0.10
                  escreval("Pedido aceito. Reajuste de 10% do salario-base.")
               senao
                  se(pontos >= 85) entao
                     valor <- 0.05
                     escreval("A empresa ofereceu 5% de reajuste.")
                     escreval("1 - Aceitar / 0 - Recusar")
                     leia(opcao_confirmacao)
                     se(opcao_confirmacao <> 1) entao
                        valor <- 0
                     fimse
                  senao
                     escreval("Pedido recusado. Melhore o desempenho e tente depois.")
                  fimse
               fimse
               se(Aumento_atual + valor > 0.30) entao
                  valor <- 0.30 - Aumento_atual
               fimse
               Aumento_atual <- Aumento_atual + valor
               escreval("Reajuste acumulado neste emprego: ", (Aumento_atual * 100):0:0, "%")
            fimse
         fimse
      fimse
   fimse
fimprocedimento

procedimento Como_jogar
var op : inteiro
inicio
   repita
      limpatela()
      escreval("========== COMO JOGAR ==========")
      escreval("1 - Primeiros passos")
      escreval("2 - Empregos e vagas")
      escreval("3 - Curriculo e entrevistas")
      escreval("4 - Desempenho e promocoes")
      escreval("5 - Advertencias e demissoes")
      escreval("6 - Salarios e horas extras")
      escreval("7 - Energia e descanso")
      escreval("8 - Empresas e negocios")
      escreval("9 - Outros sistemas")
      escreval("0 - Voltar")
      escreva("Assunto: ")
      leia(op)
      limpatela()
      escolha op
         caso 1
            escreval("Comece pelo menu Trabalho, consulte as vagas de entrada")
            escreval("e candidate-se. Voce inicia com R$ 1000 no banco.")
         caso 2
            escreval("As vagas duram 3, 5, 7 ou 10 dias, variando por empresa.")
            escreval("O prazo so diminui ao dormir. Consulte quantidade e salario.")
            escreval("Uma vaga encerrada nao cancela uma candidatura ja registrada.")
         caso 3
            escreval("O curriculo registra estudos, cursos e expedientes reais.")
            escreval("Vagas intermediarias exigem ensino medio, curso e 8 expedientes.")
            escreval("Avancadas: formacao tecnica, curso e 25 expedientes.")
            escreval("A selecao tem analise curricular, entrevista e resultado")
            escreval("em 1 a 3 dias apos a candidatura.")
         caso 4
            escreval("O desempenho vai de 0 a 100 e pertence ao emprego atual.")
            escreval("Boas decisoes ajudam; falhas repetidas prejudicam.")
            escreval("Promocoes: 10, 25, 45 e 70 expedientes na carreira.")
            escreval("Tambem e preciso desempenho de pelo menos 60.")
            escreval("Aumento salarial: a cada 15 dias, ate 30% por contrato.")
         caso 5
            escreval("Tres dias seguidos sem trabalhar podem gerar advertencia.")
            escreval("Falhas graves repetidas e desempenho baixo tambem contam.")
            escreval("Tres advertencias encerram o contrato. Experiencia permanece.")
         caso 6
            escreval("Entregador: R$ 180 por entrega; Atendente: R$ 900 por turno;")
            escreval("Programador: R$ 2500 por projeto, antes de multiplicadores.")
            escreval("Ate 5 horas extras por dia: 150% da hora normal.")
            escreval("Cada hora extra gasta 5 de energia. A referencia e 8h.")
         caso 7
            escreval("Comeca com 100 de energia, limitada a 0-100.")
            escreval("Com menos de 50 nao e possivel iniciar expediente.")
            escreval("Ate 3 expedientes por dia. Expediente normal nao gasta energia.")
            escreval("Dormir avanca 1 dia, recupera 10 de energia e zera limites.")
         caso 8
            escreval("Empreendedorismo: alcance nivel 5 na carreira vinculada")
            escreval("e tenha capital suficiente para abrir o negocio.")
            escreval("Cada empresa tem caixa, funcionarios, despesas e faturamento.")
            escreval("Os resultados sao processados no fechamento mensal.")
         caso 9
            escreval("Banco, emprestimos, mercado, imoveis, veiculos, saude,")
            escreval("cassino, inventario e conquistas continuam disponiveis.")
            escreval("O dinheiro de expedientes entra na carteira.")
      fimescolha
      se(op <> 0) entao
         escreval()
         escreval("Digite uma letra para voltar aos assuntos.")
         leia(Tecla)
      fimse
   ate(op = 0)
fimprocedimento

procedimento Tutorial_curto
var etapa, resposta : inteiro
inicio
   etapa <- 1
   repita
      limpatela()
      escreval("Bem-vindo, ", Nome, ".")
      escreval("Primeiros passos (", etapa, "/5)")
      escolha etapa
         caso 1
            escreval("Voce comeca sem emprego e com R$ 1000 no banco.")
            escreval("Em Trabalho, consulte as vagas temporarias e escolha uma.")
         caso 2
            escreval("Seu curriculo melhora com estudos, cursos e experiencia.")
            escreval("Entrevistas tem tres perguntas. O resultado sai depois")
            escreval("de 1 a 3 dias, quando voce dormir.")
         caso 3
            escreval("Empresas maiores exigem mais qualificacoes.")
            escreval("No trabalho, suas decisoes afetam o desempenho (0 a 100).")
            escreval("Advertencias acumuladas podem levar a demissao.")
         caso 4
            escreval("Voce pode trabalhar 3 vezes por dia, com energia >= 50.")
            escreval("Extras: ate 5 horas/dia, 5 de energia cada e 150% por hora.")
            escreval("Dormir passa 1 dia, recupera 10 e reinicia os limites.")
         caso 5
            escreval("Promocoes: 10, 25, 45 e 70 expedientes e bom desempenho.")
            escreval("Voce pode pedir aumentos e abrir empresas no nivel 5,")
            escreval("com capital suficiente. Use Como Jogar para os detalhes.")
      fimescolha
      escreval("1 - Continuar | 2 - Pular")
      leia(resposta)
      se(resposta = 1) entao
         etapa <- etapa + 1
      fimse
      se(resposta = 2) entao
         etapa <- 6
      fimse
   ate(etapa > 5)
   limpatela()
fimprocedimento

procedimento Registrar_ganho(valor: real; prof: caracter)
var j : inteiro
inicio
   Total_ganhos <- Total_ganhos + valor
   Quantidade_ganhos <- Quantidade_ganhos + 1
   se(Quantidade_historico < 100) entao
      Quantidade_historico <- Quantidade_historico + 1
   senao
      // Remove o registro mais antigo se o historico estiver cheio.
      para j de 1 ate 99 faca
         Historico[j] <- Historico[j + 1]
         Descricao[j] <- Descricao[j + 1]
      fimpara
   fimse
   Historico[Quantidade_historico] <- valor
   Descricao[Quantidade_historico] <- prof
fimprocedimento

procedimento Sacar_carta_jogador
inicio
   Carta <- randi(13) + 1
   se(Carta = 1) entao
      Ases_jogador <- Ases_jogador + 1
   fimse
   se(Carta > 10) entao
      Carta <- 10
   fimse
   Total_jogador <- Total_jogador + Carta
   Pontos_jogador <- Total_jogador
   se(Ases_jogador > 0) e (Total_jogador + 10 <= 21) entao
      Pontos_jogador <- Total_jogador + 10
   fimse
fimprocedimento

procedimento Sacar_carta_banca
inicio
   Carta <- randi(13) + 1
   se(Carta = 1) entao
      Ases_banca <- Ases_banca + 1
   fimse
   se(Carta > 10) entao
      Carta <- 10
   fimse
   Total_banca <- Total_banca + Carta
   Pontos_banca <- Total_banca
   se(Ases_banca > 0) e (Total_banca + 10 <= 21) entao
      Pontos_banca <- Total_banca + 10
   fimse
fimprocedimento

// CATALOGO
procedimento Definir_item(n : inteiro; nm : caracter; pr : real)
inicio
   Item_nome[n] <- nm
   Item_preco[n] <- pr
   Item_qtd[n] <- 0
   Item_valor[n] <- 0
fimprocedimento

procedimento Carregar_catalogo
inicio
   // Mercado - ALIMENTOS (1 a 10)
   Definir_item(1, "Banana (kg)", 7)
   Definir_item(2, "Maca (kg)", 10)
   Definir_item(3, "Laranja (kg)", 6)
   Definir_item(4, "Uva (kg)", 18)
   Definir_item(5, "Morango (bandeja)", 16)
   Definir_item(6, "Peito de frango (kg)", 28)
   Definir_item(7, "Carne bovina - alcatra (kg)", 65)
   Definir_item(8, "Salmao (kg)", 110)
   Definir_item(9, "Macarrao (pacote)", 9)
   Definir_item(10, "Lasanha (porcao)", 32)

   // Mercado - BEBIDAS (11 a 16)
   Definir_item(11, "Agua mineral (1,5 L)", 4)
   Definir_item(12, "Suco de laranja (1 L)", 12)
   Definir_item(13, "Refrigerante (2 L)", 11)
   Definir_item(14, "Leite (1 L)", 7)
   Definir_item(15, "Energetico (lata)", 12)
   Definir_item(16, "Cha gelado (1 L)", 10)

   // Mercado - ROUPAS (17 a 22)
   Definir_item(17, "Camiseta basica", 70)
   Definir_item(18, "Camisa polo", 130)
   Definir_item(19, "Camisa social", 180)
   Definir_item(20, "Calca jeans", 190)
   Definir_item(21, "Calca de moletom", 130)
   Definir_item(22, "Bermuda", 90)

   // Mercado - CALCADOS (23 a 26)
   Definir_item(23, "Tenis esportivo", 320)
   Definir_item(24, "Sapato social", 380)
   Definir_item(25, "Chinelo", 45)
   Definir_item(26, "Bota", 420)

   // Concessionaria - BICICLETAS (27 a 30)
   Definir_item(27, "Monark Urbana", 900)
   Definir_item(28, "Caloi Mountain Bike", 1600)
   Definir_item(29, "Oggi Big Wheel", 3500)
   Definir_item(30, "Specialized Rockhopper", 6500)

   // Concessionaria - MOTOS (31 a 34)
   Definir_item(31, "Honda CG 160", 18000)
   Definir_item(32, "Yamaha Fazer 250", 26000)
   Definir_item(33, "Honda CB 500F", 48000)
   Definir_item(34, "BMW R 1250 GS", 130000)

   // Concessionaria - CARROS (35 a 40)
   Definir_item(35, "Volkswagen Gol", 48000)
   Definir_item(36, "Fiat Mobi", 65000)
   Definir_item(37, "Chevrolet Onix", 95000)
   Definir_item(38, "Toyota Corolla", 170000)
   Definir_item(39, "BMW 320i", 350000)
   Definir_item(40, "Porsche 911", 950000)

   // Imobiliaria - KITNETS E APARTAMENTOS (41 a 44)
   Definir_item(41, "Kitnet", 80000)
   Definir_item(42, "Apartamento 1 quarto", 150000)
   Definir_item(43, "Apartamento 2 quartos", 260000)
   Definir_item(44, "Cobertura", 750000)

   // Imobiliaria - CASAS E SITIO (45 a 48)
   Definir_item(45, "Casa pequena", 220000)
   Definir_item(46, "Casa media", 380000)
   Definir_item(47, "Casa grande", 650000)
   Definir_item(48, "Sitio", 550000)

   // Imobiliaria - MANSOES (49 e 50)
   Definir_item(49, "Mansao", 2500000)
   Definir_item(50, "Mansao de luxo", 6000000)
fimprocedimento

// tipo 1 = mercado (carteira, escolhe quantidade)
// tipo 2 = veiculos (carteira, 1 unidade)
// tipo 3 = imoveis (banco, 1 unidade)
procedimento Comprar_catalogo(forma, primeiro, ultimo : inteiro; titulo : caracter)
var
   k : inteiro
   esc : inteiro
   qtd : inteiro
   pagou : inteiro
   total : real
inicio
   limpatela()
   escreval("==============================")
   escreval(titulo)
   escreval("==============================")
   se(forma = 3) entao
      escreval("(Pagamento com o saldo do BANCO)")
      escreval("Saldo no banco: R$ ", Saldo_banco:0:2)
   senao
      escreval("(Pagamento com o saldo da CARTEIRA)")
      escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
   fimse
   escreval()

   para k de primeiro ate ultimo faca
      escreval(k - primeiro + 1, " - ", Item_nome[k], " (R$ ", Item_preco[k]:0:2, ")")
   fimpara
   escreval(ultimo - primeiro + 2, " - Voltar")
   escreva("Escolha: ")
   leia(esc)

   se(esc >= 1) e (esc <= ultimo - primeiro + 1) entao

      k <- primeiro + esc - 1
      qtd <- 1

      se(forma = 1) entao
         escreva("Quantidade: ")
         leia(qtd)
      fimse

      se(qtd > 0) e (qtd <= 10000) entao

         total <- Item_preco[k] * qtd
         se(forma = 1) e (k <= 26) e (Desconto_supermercado > 0) entao
            total <- total * (1 - Desconto_supermercado)
            escreval("Desconto aplicado: 15%.")
         fimse
         pagou <- 0

         se(forma = 3) entao
            se(total <= Saldo_banco) entao
               Saldo_banco <- Saldo_banco - total
               pagou <- 1
            fimse
         senao
            se(total <= Saldo_carteira) entao
               Saldo_carteira <- Saldo_carteira - total
               pagou <- 1
            fimse
         fimse

         se(pagou = 1) entao
            Item_qtd[k] <- Item_qtd[k] + qtd
            Item_valor[k] <- Item_valor[k] + total
            Total_gasto <- Total_gasto + total
            escreval()
            escreval("Comprado: ", qtd, "x ", Item_nome[k])
            escreval("Total pago: R$ ", total:0:2)
            se(forma = 3) entao
               escreval("Saldo no banco: R$ ", Saldo_banco:0:2)
            senao
               escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
            fimse
         senao
            escreval()
            se(forma = 3) entao
               escreval("Saldo do banco insuficiente.")
            senao
               escreval("Saldo da carteira insuficiente.")
            fimse
         fimse

      senao
         escreval("Quantidade invalida. Limite: 10.000 unidades por compra.")
      fimse

   senao
      se(esc = ultimo - primeiro + 2) entao
         escreval("Voltando ao menu principal...")
      senao
         escreval("Opcao invalida.")
      fimse
   fimse
fimprocedimento

procedimento Mostrar_faixa(primeiro, ultimo : inteiro)
var
   k : inteiro
   achou : inteiro
inicio
   achou <- 0
   para k de primeiro ate ultimo faca
      se(Item_qtd[k] > 0) entao
         escreval("   ", Item_nome[k], ": ", Item_qtd[k], " (valor atual: R$ ", Item_valor[k]:0:2, ")")
         achou <- 1
      fimse
   fimpara
   se(achou = 0) entao
      escreval("   (nenhum)")
   fimse
fimprocedimento

procedimento Calcular_valor(primeiro, ultimo : inteiro)
var
   k : inteiro
inicio
   Valor_categoria <- 0
   Qtd_categoria <- 0
   para k de primeiro ate ultimo faca
      Valor_categoria <- Valor_categoria + Item_valor[k]
      Qtd_categoria <- Qtd_categoria + Item_qtd[k]
   fimpara
fimprocedimento


// ECONOMIA, EVENTOS E NOVOS SISTEMAS

procedimento Carregar_carreiras
inicio
   // ENTREGADOR
   Nome_nivel[1, 1] <- "Entregador Iniciante"
   Nome_nivel[1, 2] <- "Entregador Experiente"
   Nome_nivel[1, 3] <- "Entregador Especialista"
   Nome_nivel[1, 4] <- "Supervisor de Entregas"
   Nome_nivel[1, 5] <- "Coordenador de Logistica"

   // ATENDENTE
   Nome_nivel[2, 1] <- "Atendente Junior"
   Nome_nivel[2, 2] <- "Atendente Pleno"
   Nome_nivel[2, 3] <- "Atendente Senior"
   Nome_nivel[2, 4] <- "Subgerente"
   Nome_nivel[2, 5] <- "Gerente de Loja"

   // PROGRAMADOR
   Nome_nivel[3, 1] <- "Programador Junior"
   Nome_nivel[3, 2] <- "Programador Pleno"
   Nome_nivel[3, 3] <- "Programador Senior"
   Nome_nivel[3, 4] <- "Tech Lead"
   Nome_nivel[3, 5] <- "Arquiteto de Software"

   para Idx de 1 ate 3 faca
      Nivel_carreira[Idx] <- 1
      Dias_carreira[Idx] <- 0
   fimpara

   // Pagamento por atividade conforme o nivel.
   para Idx de 1 ate 3 faca
      Multiplicador_carreira[Idx, 1] <- 1.00
      Multiplicador_carreira[Idx, 2] <- 1.15
      Multiplicador_carreira[Idx, 3] <- 1.32
      Multiplicador_carreira[Idx, 4] <- 1.52
      Multiplicador_carreira[Idx, 5] <- 1.75
   fimpara
fimprocedimento

// EMPREENDEDORISMO
// O caixa de cada empresa e separado do dinheiro pessoal.
procedimento Carregar_empresas
var k : inteiro
inicio
   Qtd_empresas <- 0
   para k de 1 ate 10 faca
      Empresa_ativa[k] <- 0
      Empresa_nome[k] <- ""
      Empresa_tipo[k] <- 0
      Empresa_carreira[k] <- 0
      Empresa_nivel[k] <- 0
      Empresa_funcionarios[k] <- 0
      Empresa_unidades[k] <- 0
      Empresa_reputacao[k] <- 0
      Empresa_meses[k] <- 0
      Empresa_caixa[k] <- 0
      Empresa_capital[k] <- 0
      Empresa_base[k] <- 0
      Empresa_margem[k] <- 0
      Empresa_faturamento[k] <- 0
      Empresa_despesas[k] <- 0
      Empresa_lucro[k] <- 0
      Empresa_divida[k] <- 0
   fimpara
fimprocedimento

procedimento Processar_empresas
var
   k : inteiro
   fator_nivel : real
   fator_reputacao : real
   fator_funcionarios : real
   fator_unidades : real
   receita : real
   despesas : real
   lucro_mes : real
   amortizacao : real
   evento_empresa : inteiro
   custo_mercadorias : real
   folha_pagamento : real
   custos_fixos : real
   custo_extra : real
inicio
   para k de 1 ate 10 faca
      se(Empresa_ativa[k] = 1) entao
         fator_nivel <- 1
         escolha Empresa_nivel[k]
            caso 2
               fator_nivel <- 1.35
            caso 3
               fator_nivel <- 1.75
            caso 4
               fator_nivel <- 2.25
            caso 5
               fator_nivel <- 2.85
         fimescolha

         fator_reputacao <- 0.5 + (Empresa_reputacao[k] / 100)
         fator_funcionarios <- 0.7 + (Empresa_funcionarios[k] * 0.15)
         fator_unidades <- 1 + ((Empresa_unidades[k] - 1) * 0.65)

         receita <- Empresa_base[k] * fator_nivel * fator_reputacao * fator_funcionarios * fator_unidades
         custo_mercadorias <- receita * Empresa_margem[k]
         folha_pagamento <- Empresa_funcionarios[k] * 1300 * Empresa_unidades[k]
         custos_fixos <- Empresa_capital[k] * 0.004 * Empresa_unidades[k]
         custo_extra <- 0
         despesas <- custo_mercadorias + folha_pagamento + custos_fixos

         // Sorteia um evento de mercado no fechamento.
         evento_empresa <- randi(100) + 1
         se(evento_empresa <= 8) entao
            Empresa_reputacao[k] <- Empresa_reputacao[k] + 8
            se(Empresa_reputacao[k] > 100) entao
               Empresa_reputacao[k] <- 100
            fimse
            escreval("Seu negocio atraiu novos clientes. Reputacao +8.")
         senao
            se(evento_empresa <= 15) entao
               Empresa_reputacao[k] <- Empresa_reputacao[k] - 8
               se(Empresa_reputacao[k] < 0) entao
                  Empresa_reputacao[k] <- 0
               fimse
               escreval("A concorrencia aumentou. Reputacao -8.")
            senao
               se(evento_empresa <= 20) entao
                  custo_extra <- receita * 0.05
                  despesas <- despesas + custo_extra
                  escreval("Fornecedores cobraram 5% a mais sobre o faturamento.")
               fimse
            fimse
         fimse

         lucro_mes <- receita - despesas

         Empresa_faturamento[k] <- receita
         Empresa_despesas[k] <- despesas
         Empresa_lucro[k] <- lucro_mes
         Empresa_meses[k] <- Empresa_meses[k] + 1
         Empresa_caixa[k] <- Empresa_caixa[k] + receita

         escreval()
         escreval("--- FECHAMENTO: ", Empresa_nome[k], " ---")
         escreval("Faturamento: R$ ", receita:0:2)
         escreval("Mercadorias / custos de producao: R$ ", custo_mercadorias:0:2)
         escreval("Salarios dos funcionarios: R$ ", folha_pagamento:0:2)
         escreval("Aluguel, energia e manutencao: R$ ", custos_fixos:0:2)
         se(custo_extra > 0) entao
            escreval("Despesas extraordinarias: R$ ", custo_extra:0:2)
         fimse
         escreval("Total de despesas: R$ ", despesas:0:2)

         se(Empresa_caixa[k] >= despesas) entao
            Empresa_caixa[k] <- Empresa_caixa[k] - despesas
            se(Empresa_divida[k] > 0) e (lucro_mes > 0) entao
               amortizacao <- lucro_mes * 0.30
               se(amortizacao > Empresa_divida[k]) entao
                  amortizacao <- Empresa_divida[k]
               fimse
               se(amortizacao > Empresa_caixa[k]) entao
                  amortizacao <- Empresa_caixa[k]
               fimse
               Empresa_caixa[k] <- Empresa_caixa[k] - amortizacao
               Empresa_divida[k] <- Empresa_divida[k] - amortizacao
               escreval("Pagamento de divida empresarial: R$ ", amortizacao:0:2)
            fimse
         senao
            Empresa_divida[k] <- Empresa_divida[k] + (despesas - Empresa_caixa[k])
            Empresa_caixa[k] <- 0
            Empresa_reputacao[k] <- Empresa_reputacao[k] - 8
            se(Empresa_reputacao[k] < 0) entao
               Empresa_reputacao[k] <- 0
            fimse
            escreval("Caixa insuficiente. A divida da empresa aumentou.")
         fimse

         se(lucro_mes > 0) entao
            Empresa_reputacao[k] <- Empresa_reputacao[k] + 1
            se(Empresa_reputacao[k] > 100) entao
               Empresa_reputacao[k] <- 100
            fimse
         senao
            Empresa_reputacao[k] <- Empresa_reputacao[k] - 2
            se(Empresa_reputacao[k] < 0) entao
               Empresa_reputacao[k] <- 0
            fimse
         fimse

         escreval("Resultado do mes: R$ ", lucro_mes:0:2)
         escreval("Dinheiro disponivel no caixa: R$ ", Empresa_caixa[k]:0:2)
         escreval("Divida empresarial: R$ ", Empresa_divida[k]:0:2)
         escreval("Reputacao: ", Empresa_reputacao[k], "/100")
      fimse
   fimpara
fimprocedimento

procedimento Mostrar_empresa(k : inteiro)
var
   valor_mercado : real
inicio
   valor_mercado <- Empresa_capital[k] * (0.50 + (Empresa_reputacao[k] / 200) + ((Empresa_nivel[k] - 1) * 0.12) + ((Empresa_unidades[k] - 1) * 0.08))
   escreval()
   escreval("========================================")
   escreval("EMPRESA: ", Empresa_nome[k])
   escreval("Nivel: ", Empresa_nivel[k], "/5")
   escreval("Funcionarios: ", Empresa_funcionarios[k])
   escreval("Unidades: ", Empresa_unidades[k])
   escreval("Reputacao: ", Empresa_reputacao[k], "/100")
   escreval("Caixa da empresa: R$ ", Empresa_caixa[k]:0:2)
   escreval("Ultimo faturamento mensal: R$ ", Empresa_faturamento[k]:0:2)
   escreval("Ultimas despesas mensais: R$ ", Empresa_despesas[k]:0:2)
   escreval("Ultimo lucro/prejuizo: R$ ", Empresa_lucro[k]:0:2)
   escreval("Divida empresarial: R$ ", Empresa_divida[k]:0:2)
   escreval("Valor estimado do negocio: R$ ", valor_mercado:0:2)
   escreval("========================================")
fimprocedimento

procedimento Menu_empreendedorismo
var
   op_emp, op_abertura, op_admin, k, slot, tipo_novo, carreira_nova : inteiro
   custo_novo, base_nova, margem_nova, valor, restante, valor_venda, custo_acao : real
   nome_novo : caracter
inicio
   repita
      limpatela()
      escreval("========================================")
      escreval("             EMPREENDEDORISMO           ")
      escreval("========================================")
      escreval("Empresas ativas: ", Qtd_empresas, "/10")
      escreval("1 - Abrir uma empresa")
      escreval("2 - Consultar minhas empresas")
      escreval("3 - Administrar uma empresa")
      escreval("4 - Voltar ao menu principal")
      escreva("Escolha: ")
      leia(op_emp)

      escolha op_emp
         caso 1
            limpatela()
            escreval("========== ABRIR EMPRESA ==========")
            escreval("Para abrir um negocio, voce precisa ter nivel 5 na carreira correspondente.")
            escreval("Seu nivel atual:")
            escreval("Entregador: ", Nome_nivel[1, Nivel_carreira[1]])
            escreval("Atendente: ", Nome_nivel[2, Nivel_carreira[2]])
            escreval("Programador: ", Nome_nivel[3, Nivel_carreira[3]])
            escreval()
            escreval("--- ENTREGAS E ALIMENTACAO (nivel maximo de Entregador) ---")
            escreval("1 - Delivery Express | Investimento: R$ 30.000,00")
            escreval("2 - Hamburgueria | Investimento: R$ 60.000,00")
            escreval("3 - Pizzaria | Investimento: R$ 80.000,00")
            escreval("4 - Transportadora | Investimento: R$ 150.000,00")
            escreval("5 - Rede de Restaurantes | Investimento: R$ 500.000,00")
            escreval()
            escreval("--- COMERCIO E VAREJO (nivel maximo de Atendente) ---")
            escreval("6 - Mercadinho | Investimento: R$ 80.000,00")
            escreval("7 - Loja de Roupas | Investimento: R$ 120.000,00")
            escreval("8 - Loja de Eletronicos | Investimento: R$ 250.000,00")
            escreval("9 - Supermercado | Investimento: R$ 500.000,00")
            escreval("10 - Shopping Center | Investimento: R$ 5.000.000,00")
            escreval()
            escreval("--- TECNOLOGIA E JOGOS (nivel maximo de Programador) ---")
            escreval("11 - Estudio Indie | Investimento: R$ 100.000,00")
            escreval("12 - Empresa de Software | Investimento: R$ 250.000,00")
            escreval("13 - Desenvolvedora de Jogos | Investimento: R$ 400.000,00")
            escreval("14 - Publicadora de Jogos | Investimento: R$ 1.200.000,00")
            escreval("15 - Plataforma Digital | Investimento: R$ 2.000.000,00")
            escreval("0 - Cancelar")
            escreval()
            escreva("Escolha o empreendimento: ")
            leia(tipo_novo)

            custo_novo <- 0
            base_nova <- 0
            margem_nova <- 0
            carreira_nova <- 0
            nome_novo <- ""

            escolha tipo_novo
               caso 1
                  carreira_nova <- 1
                  nome_novo <- "Delivery Express"
                  custo_novo <- 30000
                  base_nova <- 18000
                  margem_nova <- 0.55
               caso 2
                  carreira_nova <- 1
                  nome_novo <- "Hamburgueria"
                  custo_novo <- 60000
                  base_nova <- 28000
                  margem_nova <- 0.60
               caso 3
                  carreira_nova <- 1
                  nome_novo <- "Pizzaria"
                  custo_novo <- 80000
                  base_nova <- 35000
                  margem_nova <- 0.60
               caso 4
                  carreira_nova <- 1
                  nome_novo <- "Transportadora"
                  custo_novo <- 150000
                  base_nova <- 65000
                  margem_nova <- 0.58
               caso 5
                  carreira_nova <- 1
                  nome_novo <- "Rede de Restaurantes"
                  custo_novo <- 500000
                  base_nova <- 150000
                  margem_nova <- 0.62
               caso 6
                  carreira_nova <- 2
                  nome_novo <- "Mercadinho"
                  custo_novo <- 80000
                  base_nova <- 35000
                  margem_nova <- 0.68
               caso 7
                  carreira_nova <- 2
                  nome_novo <- "Loja de Roupas"
                  custo_novo <- 120000
                  base_nova <- 28000
                  margem_nova <- 0.55
               caso 8
                  carreira_nova <- 2
                  nome_novo <- "Loja de Eletronicos"
                  custo_novo <- 250000
                  base_nova <- 60000
                  margem_nova <- 0.70
               caso 9
                  carreira_nova <- 2
                  nome_novo <- "Supermercado"
                  custo_novo <- 500000
                  base_nova <- 130000
                  margem_nova <- 0.72
               caso 10
                  carreira_nova <- 2
                  nome_novo <- "Shopping Center"
                  custo_novo <- 5000000
                  base_nova <- 900000
                  margem_nova <- 0.70
               caso 11
                  carreira_nova <- 3
                  nome_novo <- "Estudio Indie"
                  custo_novo <- 100000
                  base_nova <- 25000
                  margem_nova <- 0.35
               caso 12
                  carreira_nova <- 3
                  nome_novo <- "Empresa de Software"
                  custo_novo <- 250000
                  base_nova <- 70000
                  margem_nova <- 0.40
               caso 13
                  carreira_nova <- 3
                  nome_novo <- "Desenvolvedora de Jogos"
                  custo_novo <- 400000
                  base_nova <- 110000
                  margem_nova <- 0.50
               caso 14
                  carreira_nova <- 3
                  nome_novo <- "Publicadora de Jogos"
                  custo_novo <- 1200000
                  base_nova <- 300000
                  margem_nova <- 0.55
               caso 15
                  carreira_nova <- 3
                  nome_novo <- "Plataforma Digital"
                  custo_novo <- 2000000
                  base_nova <- 450000
                  margem_nova <- 0.40
            fimescolha

            se(tipo_novo >= 1) e (tipo_novo <= 15) entao
               se(Nivel_carreira[carreira_nova] = 5) entao
                  se(Qtd_empresas < 10) entao
                     slot <- 0
                     para k de 1 ate 10 faca
                        se(Empresa_ativa[k] = 0) e (slot = 0) entao
                           slot <- k
                        fimse
                     fimpara
                     se((Saldo_carteira + Saldo_banco) >= custo_novo) entao
                        escreval("Investimento inicial: R$ ", custo_novo:0:2)
                        escreval("Capital de giro inicial no caixa da empresa: R$ ", (custo_novo * 0.15):0:2)
                        escreval("1 - Confirmar abertura")
                        escreval("2 - Cancelar")
                        escreva("Escolha: ")
                        leia(op_abertura)
                        se(op_abertura = 1) entao
                           restante <- custo_novo
                           se(Saldo_carteira >= restante) entao
                              Saldo_carteira <- Saldo_carteira - restante
                              restante <- 0
                           senao
                              restante <- restante - Saldo_carteira
                              Saldo_carteira <- 0
                              Saldo_banco <- Saldo_banco - restante
                           fimse
                           Empresa_ativa[slot] <- 1
                           Empresa_nome[slot] <- nome_novo
                           Empresa_tipo[slot] <- tipo_novo
                           Empresa_carreira[slot] <- carreira_nova
                           Empresa_nivel[slot] <- 1
                           Empresa_funcionarios[slot] <- 2
                           Empresa_unidades[slot] <- 1
                           Empresa_reputacao[slot] <- 50
                           Empresa_meses[slot] <- 0
                           Empresa_capital[slot] <- custo_novo
                           Empresa_caixa[slot] <- custo_novo * 0.15
                           Empresa_base[slot] <- base_nova
                           Empresa_margem[slot] <- margem_nova
                           Empresa_faturamento[slot] <- 0
                           Empresa_despesas[slot] <- 0
                           Empresa_lucro[slot] <- 0
                           Empresa_divida[slot] <- 0
                           Qtd_empresas <- Qtd_empresas + 1
                           escreval("Empresa aberta.")
                           escreval("O caixa empresarial comecou com R$ ", Empresa_caixa[slot]:0:2)
                        senao
                           escreval("Abertura cancelada.")
                        fimse
                     senao
                        escreval("Dinheiro insuficiente para abrir essa empresa.")
                     fimse
                  senao
                     escreval("Limite de 10 empresas atingido. Venda uma para abrir outra.")
                  fimse
               senao
                  escreval("Voce precisa chegar ao ultimo cargo da carreira exigida.")
                  escreval("A empresa escolhida exige: ", Nome_nivel[carreira_nova, 5])
               fimse
            senao
               se(tipo_novo <> 0) entao
                  escreval("Opcao de empreendimento invalida.")
               fimse
            fimse

         caso 2
            limpatela()
            escreval("========== MINHAS EMPRESAS ==========")
            se(Qtd_empresas = 0) entao
               escreval("Voce ainda nao tem empresas.")
            senao
               para k de 1 ate 10 faca
                  se(Empresa_ativa[k] = 1) entao
                     escreval("Codigo ", k, " - ", Empresa_nome[k], " | Nivel ", Empresa_nivel[k], "/5 | Caixa: R$ ", Empresa_caixa[k]:0:2)
                  fimse
               fimpara
               escreva("Digite o codigo para consultar detalhes (0 para voltar): ")
               leia(Empresa_selecionada)
               se(Empresa_selecionada >= 1) e (Empresa_selecionada <= 10) entao
                  se(Empresa_ativa[Empresa_selecionada] = 1) entao
                     Mostrar_empresa(Empresa_selecionada)
                  senao
                     escreval("Empresa nao encontrada.")
                  fimse
               senao
                  se(Empresa_selecionada <> 0) entao
                     escreval("Codigo invalido.")
                  fimse
               fimse
            fimse

         caso 3
            limpatela()
            se(Qtd_empresas = 0) entao
               escreval("Voce ainda nao possui empresas para administrar.")
            senao
               escreval("========== ADMINISTRAR EMPRESA ==========")
               para k de 1 ate 10 faca
                  se(Empresa_ativa[k] = 1) entao
                     escreval(k, " - ", Empresa_nome[k], " | Caixa: R$ ", Empresa_caixa[k]:0:2)
                  fimse
               fimpara
               escreva("Escolha a empresa (0 para cancelar): ")
               leia(Empresa_selecionada)
               se(Empresa_selecionada >= 1) e (Empresa_selecionada <= 10) entao
                  se(Empresa_ativa[Empresa_selecionada] = 1) entao
                     repita
                        Mostrar_empresa(Empresa_selecionada)
                        escreval("1 - Retirar dinheiro do caixa para a carteira")
                        escreval("2 - Depositar dinheiro pessoal no caixa")
                        escreval("3 - Contratar funcionario")
                        escreval("4 - Demitir funcionario")
                        escreval("5 - Melhorar a empresa")
                        escreval("6 - Fazer publicidade")
                        escreval("7 - Abrir nova unidade")
                        escreval("8 - Vender empresa")
                        escreval("9 - Voltar")
                        escreva("Escolha: ")
                        leia(op_admin)

                        escolha op_admin
                           caso 1
                              escreva("Quanto deseja retirar do caixa? R$ ")
                              leia(valor)
                              se(valor > 0) e (valor <= Empresa_caixa[Empresa_selecionada]) entao
                                 Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] - valor
                                 Saldo_carteira <- Saldo_carteira + valor
                                 escreval("Transferencia realizada para sua carteira.")
                              senao
                                 escreval("Valor invalido ou caixa empresarial insuficiente.")
                              fimse
                           caso 2
                              escreva("Quanto deseja depositar no caixa? R$ ")
                              leia(valor)
                              se(valor > 0) e (valor <= (Saldo_carteira + Saldo_banco)) entao
                                 restante <- valor
                                 se(Saldo_carteira >= restante) entao
                                    Saldo_carteira <- Saldo_carteira - restante
                                    restante <- 0
                                 senao
                                    restante <- restante - Saldo_carteira
                                    Saldo_carteira <- 0
                                    Saldo_banco <- Saldo_banco - restante
                                 fimse
                                 Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] + valor
                                 escreval("Dinheiro transferido para o caixa empresarial.")
                              senao
                                 escreval("Valor invalido ou saldo pessoal insuficiente.")
                              fimse
                           caso 3
                              se(Empresa_funcionarios[Empresa_selecionada] < 20) entao
                                 se(Empresa_caixa[Empresa_selecionada] >= 800) entao
                                    Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] - 800
                                    Empresa_funcionarios[Empresa_selecionada] <- Empresa_funcionarios[Empresa_selecionada] + 1
                                    escreval("Funcionario contratado. Custo: R$ 800,00. Salario: R$ 1.300,00 por mes.")
                                 senao
                                    escreval("Caixa insuficiente para contratar funcionario.")
                                 fimse
                              senao
                                 escreval("Limite de 20 funcionarios atingido.")
                              fimse
                           caso 4
                              se(Empresa_funcionarios[Empresa_selecionada] > 1) entao
                                 Empresa_funcionarios[Empresa_selecionada] <- Empresa_funcionarios[Empresa_selecionada] - 1
                                 escreval("Funcionario desligado. A taxa de contratacao nao e devolvida.")
                              senao
                                 escreval("A empresa precisa manter pelo menos 1 funcionario.")
                              fimse
                           caso 5
                              se(Empresa_nivel[Empresa_selecionada] < 5) entao
                                 custo_acao <- Empresa_capital[Empresa_selecionada] * (0.20 + (Empresa_nivel[Empresa_selecionada] * 0.10))
                                 escreval("Custo da melhoria: R$ ", custo_acao:0:2)
                                 escreval("A melhoria aumenta o faturamento potencial da empresa.")
                                 se(Empresa_caixa[Empresa_selecionada] >= custo_acao) entao
                                    Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] - custo_acao
                                    Empresa_nivel[Empresa_selecionada] <- Empresa_nivel[Empresa_selecionada] + 1
                                    Empresa_reputacao[Empresa_selecionada] <- Empresa_reputacao[Empresa_selecionada] + 5
                                    se(Empresa_reputacao[Empresa_selecionada] > 100) entao
                                       Empresa_reputacao[Empresa_selecionada] <- 100
                                    fimse
                                    escreval("Empresa atualizada para nivel ", Empresa_nivel[Empresa_selecionada], ".")
                                 senao
                                    escreval("Caixa insuficiente. Deposite dinheiro ou aguarde o faturamento.")
                                 fimse
                              senao
                                 escreval("Sua empresa ja atingiu o nivel maximo.")
                              fimse
                           caso 6
                              custo_acao <- Empresa_capital[Empresa_selecionada] * 0.05
                              se(Empresa_reputacao[Empresa_selecionada] < 100) entao
                                 se(Empresa_caixa[Empresa_selecionada] >= custo_acao) entao
                                    Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] - custo_acao
                                    Empresa_reputacao[Empresa_selecionada] <- Empresa_reputacao[Empresa_selecionada] + 10
                                    se(Empresa_reputacao[Empresa_selecionada] > 100) entao
                                       Empresa_reputacao[Empresa_selecionada] <- 100
                                    fimse
                                    escreval("Publicidade concluida. Reputacao aumentou.")
                                 senao
                                    escreval("Caixa insuficiente para publicidade.")
                                 fimse
                              senao
                                 escreval("A reputacao ja esta no maximo.")
                              fimse
                           caso 7
                              se(Empresa_unidades[Empresa_selecionada] < 5) entao
                                 custo_acao <- Empresa_capital[Empresa_selecionada] * 0.35
                                 escreval("Custo para abrir uma nova unidade: R$ ", custo_acao:0:2)
                                 se(Empresa_caixa[Empresa_selecionada] >= custo_acao) entao
                                    Empresa_caixa[Empresa_selecionada] <- Empresa_caixa[Empresa_selecionada] - custo_acao
                                    Empresa_unidades[Empresa_selecionada] <- Empresa_unidades[Empresa_selecionada] + 1
                                    escreval("Nova unidade aberta. Total: ", Empresa_unidades[Empresa_selecionada])
                                 senao
                                    escreval("Caixa insuficiente para expandir.")
                                 fimse
                              senao
                                 escreval("Limite de 5 unidades atingido.")
                              fimse
                           caso 8
                              valor_venda <- Empresa_capital[Empresa_selecionada] * (0.50 + (Empresa_reputacao[Empresa_selecionada] / 200) + ((Empresa_nivel[Empresa_selecionada] - 1) * 0.12) + ((Empresa_unidades[Empresa_selecionada] - 1) * 0.08)) + Empresa_caixa[Empresa_selecionada] - Empresa_divida[Empresa_selecionada]
                              escreval("Valor estimado para venda: R$ ", valor_venda:0:2)
                              escreval("1 - Confirmar venda")
                              escreval("2 - Cancelar")
                              escreva("Escolha: ")
                              leia(op_abertura)
                              se(op_abertura = 1) entao
                                 se(valor_venda > 0) entao
                                    Saldo_carteira <- Saldo_carteira + valor_venda
                                    escreval("Empresa vendida. O pagamento entrou na carteira.")
                                    Empresa_ativa[Empresa_selecionada] <- 0
                                    Empresa_nome[Empresa_selecionada] <- ""
                                    Qtd_empresas <- Qtd_empresas - 1
                                    op_admin <- 9
                                 senao
                                    escreval("A empresa possui dividas superiores ao valor de venda. Quite ou reduza as dividas antes de vender.")
                                 fimse
                              senao
                                 escreval("Venda cancelada.")
                              fimse
                        fimescolha
                        se(op_admin <> 9) entao
                           escreval()
                           escreval("Digite uma letra para continuar.")
                           leia(nome_novo)
                        fimse
                     ate(op_admin = 9)
                  senao
                     escreval("Empresa nao encontrada.")
                  fimse
               senao
                  se(Empresa_selecionada <> 0) entao
                     escreval("Codigo invalido.")
                  fimse
               fimse
            fimse
         caso 4
            escreval("Voltando ao menu principal.")
         outrocaso
            escreval("Opcao invalida.")
      fimescolha

      se(op_emp <> 4) entao
         escreval()
         escreval("Digite uma letra para continuar.")
         leia(nome_novo)
      fimse
   ate(op_emp = 4)
fimprocedimento

procedimento Atualizar_patrimonio
var
   k : inteiro
inicio
   Patrimonio <- Saldo_banco + Saldo_carteira
   para k de 1 ate 50 faca
      Patrimonio <- Patrimonio + Item_valor[k]
   fimpara
   para k de 1 ate 10 faca
      se(Empresa_ativa[k] = 1) entao
         Valor_empresa_total <- Empresa_capital[k] * (0.50 + (Empresa_reputacao[k] / 200) + ((Empresa_nivel[k] - 1) * 0.12) + ((Empresa_unidades[k] - 1) * 0.08))
         Patrimonio <- Patrimonio + Valor_empresa_total + Empresa_caixa[k] - Empresa_divida[k]
      fimse
   fimpara
   se(Investimento_pendente = 1) entao
      Patrimonio <- Patrimonio + 500
   fimse
   se(Emprestimo_ativo = 1) entao
      Patrimonio <- Patrimonio - Divida_emprestimo
   fimse
fimprocedimento

procedimento Registrar_dia_trabalho(carreira : inteiro)
inicio
   Dias_carreira[carreira] <- Dias_carreira[carreira] + 1
   Dias_trabalhados_total <- Dias_trabalhados_total + 1
   Experiencia_total[carreira] <- Experiencia_total[carreira] + 1
   se(Nivel_carreira[carreira] > Melhor_cargo[carreira]) entao
      Melhor_cargo[carreira] <- Nivel_carreira[carreira]
   fimse

   se(Nivel_carreira[carreira] = 1) e (Dias_carreira[carreira] >= 10) e (Desempenho >= 60) entao
      Nivel_carreira[carreira] <- 2
      escreval()
      escreval("--- PROMOCAO ---")
      escreval("Voce agora e: ", Nome_nivel[carreira, 2])
      escreval("O pagamento agora e 1,15 vez o valor inicial.")
   senao
      se(Nivel_carreira[carreira] = 2) e (Dias_carreira[carreira] >= 25) e (Desempenho >= 60) entao
         Nivel_carreira[carreira] <- 3
         escreval()
         escreval("--- PROMOCAO ---")
         escreval("Voce agora e: ", Nome_nivel[carreira, 3])
         escreval("O pagamento por atividade aumentou.")
      senao
         se(Nivel_carreira[carreira] = 3) e (Dias_carreira[carreira] >= 45) e (Desempenho >= 60) entao
            Nivel_carreira[carreira] <- 4
            escreval()
            escreval("--- PROMOCAO ---")
            escreval("Voce agora e: ", Nome_nivel[carreira, 4])
            escreval("O pagamento por atividade aumentou.")
         senao
            se(Nivel_carreira[carreira] = 4) e (Dias_carreira[carreira] >= 70) e (Desempenho >= 60) entao
               Nivel_carreira[carreira] <- 5
               escreval()
               escreval("--- ULTIMO CARGO ALCANCADO ---")
               escreval("Voce chegou ao cargo: ", Nome_nivel[carreira, 5])
               escreval("Voce chegou ao ultimo cargo da carreira.")
            fimse
         fimse
      fimse
   fimse
   se(Nivel_carreira[carreira] > Melhor_cargo[carreira]) entao
      Melhor_cargo[carreira] <- Nivel_carreira[carreira]
   fimse
fimprocedimento

// Uma unica barra para a energia do personagem.
procedimento Mostrar_energia
var
   parte : inteiro
inicio
   escreva("Energia: [")
   para parte de 1 ate 10 faca
      se(Energia >= parte * 10) entao
         escreva("#")
      senao
         escreva("-")
      fimse
   fimpara
   escreval("] ", Energia, "/100")
fimprocedimento

// Horas extras usam uma jornada de referencia de 8 horas.
// O valor normal do expediente nao muda.
procedimento Oferecer_horas_extras(valor_normal : real)
var
   valor_hora, pagamento_extra : real
inicio
   Horas_extras_possiveis <- 5 - Horas_extras_hoje
   se(Horas_extras_possiveis > (Energia div 5)) entao
      Horas_extras_possiveis <- Energia div 5
   fimse

   escreval()
   escreval("Energia: ", Energia, "/100 | Extras hoje: ", Horas_extras_hoje, "/5")
   se(Horas_extras_possiveis <= 0) entao
      escreval("Nao ha horas extras disponiveis agora.")
   senao
      escreval("Horas extras disponiveis: ", Horas_extras_possiveis)
      escreval("Cada hora gasta 5 de energia e paga 150% da hora normal.")
      escreval("A hora normal considera o valor deste expediente dividido por 8.")
      escreva("Quantas horas extras? (0 para pular): ")
      leia(Horas_extras_pedidas)
      se(Horas_extras_pedidas >= 1) e (Horas_extras_pedidas <= Horas_extras_possiveis) entao
         valor_hora <- valor_normal / 8
         pagamento_extra <- valor_hora * 1.5 * Horas_extras_pedidas
         Energia <- Energia - (Horas_extras_pedidas * 5)
         Horas_extras_hoje <- Horas_extras_hoje + Horas_extras_pedidas
         Saldo_carteira <- Saldo_carteira + pagamento_extra
         Registrar_ganho(pagamento_extra, "Horas extras")
         escreval("Extras concluidas: ", Horas_extras_pedidas, " hora(s).")
         escreval("Recebido: R$ ", pagamento_extra:0:2, " | Energia: ", Energia, "/100")
      senao
         se(Horas_extras_pedidas <> 0) entao
            escreval("Quantidade invalida. Nenhuma hora extra realizada.")
         fimse
      fimse
   fimse
fimprocedimento

procedimento Cobrar_despesa(valor : real; descricao : caracter)
var
   restante : real
inicio
   Valor_pago <- 0
   restante <- valor

   se(restante > 0) entao
      se(Saldo_carteira >= restante) entao
         Saldo_carteira <- Saldo_carteira - restante
         Valor_pago <- valor
         restante <- 0
      senao
         Valor_pago <- Valor_pago + Saldo_carteira
         restante <- restante - Saldo_carteira
         Saldo_carteira <- 0

         se(Saldo_banco >= restante) entao
            Saldo_banco <- Saldo_banco - restante
            Valor_pago <- Valor_pago + restante
            restante <- 0
         senao
            Valor_pago <- Valor_pago + Saldo_banco
            restante <- restante - Saldo_banco
            Saldo_banco <- 0
         fimse
      fimse

      Total_gasto <- Total_gasto + Valor_pago
      escreval(descricao, ": R$ ", valor:0:2, " | Pago: R$ ", Valor_pago:0:2)
      se(restante > 0) entao
         escreval("Valor nao pago por falta de saldo: R$ ", restante:0:2)
      fimse
   fimse
fimprocedimento

procedimento Fechamento_mensal
var
   k : inteiro
   aluguel : real
   iptu : real
   manutencao : real
   seguro : real
   total_imoveis : inteiro
   total_veiculos : inteiro
inicio
   aluguel <- 0
   iptu <- 0
   manutencao <- 0
   seguro <- 0
   total_imoveis <- 0
   total_veiculos <- 0

   // Aluguel e custos proporcionais aos imoveis realmente possuidos
   para k de 41 ate 50 faca
      se(Item_qtd[k] > 0) entao
         total_imoveis <- total_imoveis + Item_qtd[k]
         se(k <= 44) entao
            aluguel <- aluguel + (Item_preco[k] * Item_qtd[k] * 0.006)
         senao
            se(k <= 48) entao
               aluguel <- aluguel + (Item_preco[k] * Item_qtd[k] * 0.007)
            senao
               aluguel <- aluguel + (Item_preco[k] * Item_qtd[k] * 0.008)
            fimse
         fimse
         iptu <- iptu + (Item_preco[k] * Item_qtd[k] * 0.0005)
         manutencao <- manutencao + (Item_preco[k] * Item_qtd[k] * 0.0002)
      fimse
   fimpara

   // Seguro mensal dos veiculos que o jogador possui
   para k de 27 ate 40 faca
      se(Item_qtd[k] > 0) entao
         total_veiculos <- total_veiculos + Item_qtd[k]
         seguro <- seguro + (Item_preco[k] * Item_qtd[k] * 0.001)
      fimse
   fimpara

   se(aluguel > 0) entao
      Saldo_banco <- Saldo_banco + aluguel
      Registrar_ganho(aluguel, "Aluguel de imoveis")
      escreval("Alugueis recebidos: R$ ", aluguel:0:2)
   fimse

   // Rendimento de 0,5% ao mes sobre o saldo bancario
   Juros_banco <- Saldo_banco * 0.005
   se(Juros_banco > 0) entao
      Saldo_banco <- Saldo_banco + Juros_banco
      Registrar_ganho(Juros_banco, "Juros bancarios")
      escreval("Juros recebidos no banco (0,5%): R$ ", Juros_banco:0:2)
   fimse

   Cobrar_despesa(120, "Conta de luz e servicos basicos")
   se(total_imoveis > 0) entao
      Cobrar_despesa(iptu, "IPTU dos imoveis")
      Cobrar_despesa(manutencao, "Manutencao dos imoveis")
   fimse

   se(total_veiculos > 0) entao
      Cobrar_despesa(seguro, "Seguro dos veiculos")
   fimse

   // Juros e parcela do emprestimo: divida nunca desaparece por falta de saldo
   se(Emprestimo_ativo = 1) entao
      se(Meses_restantes < 1) entao
         Meses_restantes <- 1
      fimse
      Parcela_emprestimo <- Divida_emprestimo / Meses_restantes
      escreval()
      escreval("Cobranca do emprestimo. Saldo devedor: R$ ", Divida_emprestimo:0:2)
      Cobrar_despesa(Parcela_emprestimo, "Parcela do emprestimo")
      Divida_emprestimo <- Divida_emprestimo - Valor_pago
      se(Divida_emprestimo < 0.01) entao
         Divida_emprestimo <- 0
      fimse

      se(Valor_pago >= Parcela_emprestimo) entao
         Meses_restantes <- Meses_restantes - 1
      senao
         Divida_emprestimo <- Divida_emprestimo * 1.02
         escreval("Parcela em atraso: foi aplicada uma taxa adicional de 2%.")
      fimse

      se(Divida_emprestimo = 0) entao
         Emprestimo_ativo <- 0
         Meses_restantes <- 0
         escreval("Emprestimo quitado.")
      senao
         escreval("Saldo devedor restante: R$ ", Divida_emprestimo:0:2)
      fimse
   fimse

   escreval()
   escreval("Resumo mensal: ", total_imoveis, " imovel(is) e ", total_veiculos, " veiculo(s).")

   // Empresas tambem fecham o caixa e pagam suas despesas uma vez por mes.
   Processar_empresas
fimprocedimento

procedimento Evento_aleatorio
var
   sorteio : inteiro
   valor : real
   tem_veiculo : inteiro
   tem_imovel : inteiro
inicio
   Desconto_supermercado <- 0
   sorteio <- randi(100) + 1

   se(sorteio <= 25) entao
      Evento_hoje <- randi(10) + 1
      tem_veiculo <- 0
      tem_imovel <- 0

      para Idx de 27 ate 40 faca
         se(Item_qtd[Idx] > 0) entao
            tem_veiculo <- 1
         fimse
      fimpara
      para Idx de 41 ate 50 faca
         se(Item_qtd[Idx] > 0) entao
            tem_imovel <- 1
         fimse
      fimpara

      escreval()
      escreval("========== EVENTO DO DIA ==========")

      escolha Evento_hoje
         caso 1
            se(tem_veiculo = 1) entao
               valor <- 150
               Cobrar_despesa(valor, "Multa de transito")
               escreval("O evento de multa foi registrado.")
            senao
               escreval("Nenhum evento aplicavel hoje.")
            fimse
         caso 2
            se(tem_veiculo = 1) entao
               valor <- 250
               Cobrar_despesa(valor, "Pneu furado - conserto")
            senao
               escreval("Nenhum evento aplicavel hoje.")
            fimse
         caso 3
            valor <- 0
            se(Saldo_carteira > 0) entao
               valor <- Saldo_carteira * 0.20
               Saldo_carteira <- Saldo_carteira - valor
               Total_gasto <- Total_gasto + valor
            fimse
            escreval("Assalto: perda de R$ ", valor:0:2, " da carteira.")
         caso 4
            se(tem_imovel = 1) entao
               valor <- 300
               Cobrar_despesa(valor, "Reparo emergencial no imovel")
            senao
               escreval("Nenhum evento aplicavel hoje.")
            fimse
         caso 5
            se(tem_veiculo = 1) entao
               valor <- 450
               Cobrar_despesa(valor, "Reparo inesperado no veiculo")
            senao
               escreval("Nenhum evento aplicavel hoje.")
            fimse
         caso 6
            valor <- 500 + (randi(1500) + 1)
            Saldo_carteira <- Saldo_carteira + valor
            Registrar_ganho(valor, "Heranca")
            escreval("Voce recebeu uma heranca de R$ ", valor:0:2, ".")
         caso 7
            se(Profissao <> "Desempregado") entao
               valor <- Salario_cargo[1] * Multiplicador_carreira[1, Nivel_carreira[1]] * 2
               se(Profissao = "Atendente") entao
                  valor <- Salario_cargo[2] * Multiplicador_carreira[2, Nivel_carreira[2]] * 2
               fimse
               se(Profissao = "Programador") entao
                  valor <- Salario_cargo[3] * Multiplicador_carreira[3, Nivel_carreira[3]] * 2
               fimse
               Saldo_carteira <- Saldo_carteira + valor
               Registrar_ganho(valor, "Bonus no trabalho")
               escreval("Bonus recebido: R$ ", valor:0:2, ".")
            senao
               escreval("Nenhum evento aplicavel hoje.")
            fimse
         caso 8
            Desconto_supermercado <- 0.15
            escreval("O mercado esta com 15% de desconto hoje.")
         caso 9
            se(Investimento_pendente = 0) e (Saldo_carteira >= 500) entao
               escreval("Oportunidade de investimento: aplique R$ 500,00 e receba R$ 550,00 em 30 dias.")
               escreval("1 - Investir")
               escreval("2 - Recusar")
               escreva("Escolha: ")
               leia(Resposta_evento)
               se(Resposta_evento = 1) entao
                  Saldo_carteira <- Saldo_carteira - 500
                  Investimento_pendente <- 1
                  Dia_resgate_investimento <- Dias_passados + 30
                  Investimentos_total <- Investimentos_total + 500
                  escreval("Investimento realizado. Resgate previsto para daqui a 30 dias.")
               senao
                  escreval("Voce recusou a oportunidade.")
               fimse
            senao
               escreval("Nenhuma oportunidade de investimento disponivel no momento.")
            fimse
         caso 10
            valor <- 100 + (randi(400) + 1)
            Saldo_carteira <- Saldo_carteira + valor
            Registrar_ganho(valor, "Presente inesperado")
            escreval("Voce ganhou R$ ", valor:0:2, ".")
      fimescolha
   senao
      Evento_hoje <- 0
      escreval()
      escreval("Nenhum evento especial aconteceu hoje.")
   fimse

   se(Investimento_pendente = 1) e (Dias_passados >= Dia_resgate_investimento) entao
      Saldo_banco <- Saldo_banco + 550
      Registrar_ganho(550, "Resgate de investimento")
      Investimento_pendente <- 0
      Dia_resgate_investimento <- 0
      escreval("Investimento resgatado: R$ 550,00 no banco.")
   fimse
fimprocedimento

procedimento Vender_item
var
   k : inteiro
   qtd_venda : inteiro
   preco_unitario : real
   valor_venda : real
inicio
   escreval()
   escreval("========== VENDA DE ITENS ==========")
   escreval("Itens disponiveis:")
   para k de 1 ate 50 faca
      se(Item_qtd[k] > 0) entao
         escreval(k, " - ", Item_nome[k], " | Quantidade: ", Item_qtd[k])
      fimse
   fimpara
   escreva("Digite o codigo do item (0 para cancelar): ")
   leia(k)

   se(k >= 1) e (k <= 50) entao
      se(Item_qtd[k] > 0) entao
         escreva("Quantidade para vender: ")
         leia(qtd_venda)
         se(qtd_venda > 0) e (qtd_venda <= Item_qtd[k]) entao
            preco_unitario <- Item_valor[k] / Item_qtd[k]
            // Revenda a 80% do valor registrado no inventario.
            valor_venda <- preco_unitario * qtd_venda * 0.80
            escreval("Voce recebera: R$ ", valor_venda:0:2)
            escreval("1 - Confirmar venda")
            escreval("2 - Cancelar")
            escreva("Escolha: ")
            leia(Opcao_item)
            se(Opcao_item = 1) entao
               Item_qtd[k] <- Item_qtd[k] - qtd_venda
               Item_valor[k] <- Item_valor[k] - (preco_unitario * qtd_venda)
               se(Item_qtd[k] = 0) entao
                  Item_valor[k] <- 0
               fimse
               Saldo_carteira <- Saldo_carteira + valor_venda
               escreval("Venda concluida. Recebido: R$ ", valor_venda:0:2)
            senao
               escreval("Venda cancelada.")
            fimse
         senao
            escreval("Quantidade invalida ou maior que o estoque.")
         fimse
      senao
         escreval("Esse item nao esta no inventario.")
      fimse
   senao
      se(k = 0) entao
         escreval("Venda cancelada.")
      senao
         escreval("Codigo invalido.")
      fimse
   fimse
fimprocedimento

procedimento Verificar_conquistas
var
   k : inteiro
   total_veiculos : inteiro
   tem_mansao : inteiro
inicio
   Atualizar_patrimonio
   total_veiculos <- 0
   tem_mansao <- 0
   para k de 27 ate 40 faca
      total_veiculos <- total_veiculos + Item_qtd[k]
   fimpara
   se(Item_qtd[49] > 0) ou (Item_qtd[50] > 0) entao
      tem_mansao <- 1
   fimse

   se(Conquista[1] = 0) e (Patrimonio >= 1000000) entao
      Conquista[1] <- 1
      escreval("Conquista: PRIMEIRO MILHAO")
   fimse
   se(Conquista[2] = 0) e (Patrimonio >= 10000000) entao
      Conquista[2] <- 1
      escreval("Conquista: MILIONARIO")
   fimse
   se(Conquista[3] = 0) e (Patrimonio >= 100000000) entao
      Conquista[3] <- 1
      escreval("Conquista: MAGNATA")
   fimse
   se(Conquista[4] = 0) e (Item_qtd[41] + Item_qtd[42] + Item_qtd[43] + Item_qtd[44] + Item_qtd[45] + Item_qtd[46] + Item_qtd[47] + Item_qtd[48] + Item_qtd[49] + Item_qtd[50] > 0) entao
      Conquista[4] <- 1
      escreval("Conquista: PRIMEIRO IMOVEL")
   fimse
   se(Conquista[5] = 0) e (tem_mansao = 1) entao
      Conquista[5] <- 1
      escreval("Conquista: DONO DE UMA MANSAO")
   fimse
   se(Conquista[6] = 0) e (total_veiculos >= 10) entao
      Conquista[6] <- 1
      escreval("Conquista: COLECIONADOR")
   fimse
   se(Conquista[7] = 0) e (Dias_trabalhados_total >= 100) entao
      Conquista[7] <- 1
      escreval("Conquista: TRABALHADOR DEDICADO")
   fimse
   se(Conquista[8] = 0) e (Total_apostas >= 50) entao
      Conquista[8] <- 1
      escreval("Conquista: APOSTADOR")
   fimse
   se(Conquista[9] = 0) e (Investimentos_total >= 10000) entao
      Conquista[9] <- 1
      escreval("Conquista: INVESTIDOR")
   fimse
   se(Conquista[10] = 0) e (Dias_passados >= 365) entao
      Conquista[10] <- 1
      escreval("Conquista: UM ANO DE HISTORIA")
   fimse
   se(Conquista[11] = 0) e (Nivel_carreira[1] = 5) e (Nivel_carreira[2] = 5) e (Nivel_carreira[3] = 5) entao
      Conquista[11] <- 1
      escreval("Conquista: MESTRE DAS PROFISSOES")
   fimse
   se(Conquista[12] = 0) e (Item_qtd[1] + Item_qtd[2] + Item_qtd[3] + Item_qtd[4] + Item_qtd[5] + Item_qtd[6] + Item_qtd[7] + Item_qtd[8] + Item_qtd[9] + Item_qtd[10] + Item_qtd[11] + Item_qtd[12] + Item_qtd[13] + Item_qtd[14] + Item_qtd[15] + Item_qtd[16] + Item_qtd[17] + Item_qtd[18] + Item_qtd[19] + Item_qtd[20] + Item_qtd[21] + Item_qtd[22] + Item_qtd[23] + Item_qtd[24] + Item_qtd[25] + Item_qtd[26] >= 100) entao
      Conquista[12] <- 1
      escreval("Conquista: VIDA ORGANIZADA")
   fimse

   se(Patrimonio >= 100000000) e (Vitoria = 0) entao
      Vitoria <- 1
      escreval()
      escreval("==========================================")
      escreval("             VITORIA! MAGNATA             ")
      escreval("==========================================")
      escreval("Seu patrimonio chegou a R$ 100.000.000,00.")
      escreval("Objetivo principal concluido.")
   fimse
fimprocedimento

procedimento Mostrar_conquistas
inicio
   escreval("========== CONQUISTAS ==========")
   escreval(Conquista[1], " - Primeiro Milhao: acumular R$ 1.000.000 em patrimonio.")
   escreval(Conquista[2], " - Milionario: acumular R$ 10.000.000 em patrimonio.")
   escreval(Conquista[3], " - Magnata: acumular R$ 100.000.000 em patrimonio.")
   escreval(Conquista[4], " - Primeiro Imovel: comprar uma propriedade.")
   escreval(Conquista[5], " - Dono de uma Mansao: possuir uma mansao.")
   escreval(Conquista[6], " - Colecionador: possuir 10 veiculos.")
   escreval(Conquista[7], " - Trabalhador Dedicado: trabalhar 100 dias.")
   escreval(Conquista[8], " - Apostador: participar de 50 apostas.")
   escreval(Conquista[9], " - Investidor: investir R$ 10.000 ao longo da partida.")
   escreval(Conquista[10], " - Um Ano de Historia: sobreviver por 365 dias.")
   escreval(Conquista[11], " - Mestre das Profissoes: chegar ao nivel maximo nas 3 carreiras.")
   escreval(Conquista[12], " - Vida Organizada: possuir 100 itens de mercado.")
   escreval("(1 = desbloqueada | 0 = bloqueada)")
fimprocedimento

// Data
// Gera numeros com dois digitos para a data.
procedimento Carregar_textos_data
var
   a : inteiro
   b : inteiro
inicio
   Digito[0] <- "0"
   Digito[1] <- "1"
   Digito[2] <- "2"
   Digito[3] <- "3"
   Digito[4] <- "4"
   Digito[5] <- "5"
   Digito[6] <- "6"
   Digito[7] <- "7"
   Digito[8] <- "8"
   Digito[9] <- "9"
   para a de 0 ate 9 faca
      para b de 0 ate 9 faca
         Texto_2d[a * 10 + b] <- Digito[a] + Digito[b]
      fimpara
   fimpara
fimprocedimento

// Formata a data. Cada mes possui 30 dias.
procedimento Atualizar_data
inicio
   Dia_do_mes <- (Dias_passados mod 30) + 1
   Mes_atual <- (Meses_passados mod 12) + 1
   Data_txt <- Texto_2d[Dia_do_mes] + " / " + Texto_2d[Mes_atual] + " / 20" + Texto_2d[Ano_atual - 2000]
fimprocedimento

// Avanca um dia somente quando o jogador dorme.
// A cada 30 dias, veiculos perdem 2% do valor.
procedimento Passar_dia
var
   k : inteiro
   resto : inteiro
   perda : real
inicio
   Avaliar_dia_profissional
   Dias_passados <- Dias_passados + 1
   Resolver_candidatura
   Atualizar_vagas
   Trabalhos_hoje <- 0
   Horas_extras_hoje <- 0
   Energia <- Energia + 10
   se(Energia > 100) entao
      Energia <- 100
   fimse
   escreval("Energia recuperada: 10 pontos. Atual: ", Energia, "/100")
   Apostas_dia <- 0
   Desconto_supermercado <- 0
   escreval()
   escreval("Passou 1 dia. Dias jogados: ", Dias_passados)

   se(Fome > 0) entao
      Fome <- Fome - 1
   fimse
   se(Sede > 0) entao
      Sede <- Sede - 1
   fimse
   se(Fome < 0) entao
      Fome <- 0
   fimse
   se(Sede < 0) entao
      Sede <- 0
   fimse
   se(Fome <= 4) entao
      escreval("Sua fome esta baixa. Coma algo.")
   fimse
   se(Sede <= 4) entao
      escreval("Sua sede esta baixa. Beba algo.")
   fimse

   se((Fome = 0) ou (Sede = 0)) e (Doente = 0) entao
      Doente <- 1
      Vida <- Vida - 5
      se(Vida < 0) entao
         Vida <- 0
      fimse
      escreval("Voce ficou doente e perdeu 5 pontos de vida.")
   fimse

   se(Vida <= 10) e (Internado = 0) entao
      Internado <- 1
      escreval("Voce foi internado. A alta exige pelo menos 30 pontos de vida.")
   fimse

   se(Internado = 1) entao
      se((Saldo_carteira + Saldo_banco) >= 350) entao
         se(Saldo_carteira >= 350) entao
            Saldo_carteira <- Saldo_carteira - 350
         senao
            Custo_saude <- 350 - Saldo_carteira
            Saldo_carteira <- 0
            Saldo_banco <- Saldo_banco - Custo_saude
         fimse
         Total_gasto <- Total_gasto + 350
         Vida <- Vida + 1
         se(Vida > 100) entao
            Vida <- 100
         fimse
         escreval("Diaria do hospital paga: R$ 350,00. Vida: ", Vida, "/100")
         se(Vida >= 30) entao
            Internado <- 0
            escreval("Voce recebeu alta. Se estiver doente, ainda precisa de tratamento.")
         fimse
      senao
         Vida <- Vida + 1
         se(Vida >= 30) entao
            Internado <- 0
            escreval("Voce recebeu atendimento publico de emergencia e teve alta hospitalar.")
         senao
            escreval("Sem recursos para a diaria. O hospital publico manteve seu atendimento gratuito.")
         fimse
      fimse
   fimse

   // Apostas frequentes elevam o indicador; dias sem apostar ajudam a reduzi-lo.
   se(Apostou_hoje = 0) entao
      Dias_sem_apostar <- Dias_sem_apostar + 1
      Indice_apostas <- Indice_apostas - 10
      se(Indice_apostas < 0) entao
         Indice_apostas <- 0
      fimse
   senao
      Dias_sem_apostar <- 0
      se(Indice_apostas >= 80) entao
         escreval("As apostas frequentes geraram uma despesa extra.")
         Cobrar_despesa(100, "Gastos extras relacionados ao excesso de apostas")
      senao
         se(Indice_apostas >= 50) entao
            escreval("Voce tem apostado com frequencia.")
         fimse
      fimse
   fimse
   Apostou_hoje <- 0

   resto <- Dias_passados mod 30
   se(resto = 0) entao
      Meses_passados <- Meses_passados + 1
      perda <- 0

      se((Meses_passados mod 12) = 0) entao
         Ano_atual <- Ano_atual + 1
      fimse

      para k de 27 ate 40 faca
         perda <- perda + (Item_valor[k] * 2) / 100
         Item_valor[k] <- Item_valor[k] - (Item_valor[k] * 2) / 100
      fimpara

      escreval()
      escreval("--- FECHAMENTO DO MES ", Meses_passados, " ---")
      se(perda > 0) entao
         Total_desvalorizado <- Total_desvalorizado + perda
         escreval("Seus veiculos desvalorizaram 2%: perda de R$ ", perda:0:2)
      senao
         escreval("Nenhum veiculo para desvalorizar.")
      fimse

      Fechamento_mensal
   fimse

   Atualizar_data
   escreval("Data atual: ", Data_txt)

   Evento_aleatorio
   Verificar_conquistas
fimprocedimento

// Entrada do tutorial curto.
procedimento Tutorial_inicial
inicio
   Tutorial_curto
fimprocedimento

// Empregos e entrevistas
procedimento Carregar_entrevistas
var
   k : inteiro
inicio
   Nome_cargo[1] <- "Entregador"
   Nome_cargo[2] <- "Atendente"
   Nome_cargo[3] <- "Programador"
   Unidade_cargo[1] <- "entrega"
   Unidade_cargo[2] <- "turno"
   Unidade_cargo[3] <- "projeto"
   Salario_cargo[1] <- 180
   Salario_cargo[2] <- 900
   Salario_cargo[3] <- 2500

   // As entrevistas usam duas opcoes por pergunta.
   para k de 1 ate 15 faca
      Opcao_a[k] <- "Sim"
      Opcao_b[k] <- "Nao"
   fimpara

   Pergunta[1] <- "Voce tem CNH?"
   Pergunta[2] <- "Voce conhece bem a regiao onde ira trabalhar?"
   Pergunta[3] <- "Voce consegue cumprir os prazos de entrega?"
   Pergunta[4] <- "Voce possui experiencia trabalhando com entregas?"
   Pergunta[5] <- "Voce aceita fazer entregas em dias de chuva?"

   Pergunta[6] <- "Voce consegue atender clientes?"
   Pergunta[7] <- "Como voce reagiria a um cliente insatisfeito?"
   Opcao_a[7] <- "Calmo e paciente"
   Opcao_b[7] <- "Grosso e impaciente"
   Pergunta[8] <- "Voce consegue trabalhar em equipe?"
   Pergunta[9] <- "Voce consegue manter a calma em situacoes de pressao?"
   Pergunta[10] <- "Voce tem disponibilidade para trabalhar em diferentes turnos?"

   Pergunta[11] <- "Voce possui conhecimentos em alguma linguagem de programacao?"
   Pergunta[12] <- "Voce sabe identificar e corrigir erros em um codigo?"
   Pergunta[13] <- "Voce consegue resolver problemas usando logica?"
   Pergunta[14] <- "Voce sabe trabalhar com banco de dados?"
   Pergunta[15] <- "Voce consegue seguir os requisitos de um projeto?"
fimprocedimento

// cargo: 1 = Entregador, 2 = Atendente, 3 = Programador
// Entrevista antiga, mantida apenas para compatibilidade. A selecao usa Entrevista_nova.
procedimento Entrevista(cargo : inteiro)
var
   k : inteiro
   base : inteiro
   pts : inteiro
   resp : inteiro
inicio
   base <- (cargo - 1) * 5
   pts <- 0

   escreval()
   escreval("Entrevista para ", Nome_cargo[cargo])
   escreval("Certo, ", Nome, ". Vamos comecar.")
   se(cargo = 1) entao
      escreval("30 Minutos depois...")
   fimse
   se(cargo = 2) entao
      escreval("25 Minutos depois...")
   fimse
   se(cargo = 3) entao
      escreval("20 Minutos depois...")
   fimse
   escreval("Responda as cinco perguntas:")
   escreval()

   para k de 1 ate 5 faca
      escreval("Pergunta ", k, " - ", Pergunta[base + k])
      escreval("1 - ", Opcao_a[base + k])
      escreval("2 - ", Opcao_b[base + k])
      escreval()
      escreva("Digite a sua resposta: ")
      leia(resp)

      se(resp = 1) entao
         pts <- pts + 1
         escreval("Resposta contabilizada: +1 ponto.")
      senao
         escreval("Resposta contabilizada: 0 ponto.")
      fimse
      escreval()
   fimpara

   escreval("Pontuacao final: ", pts, " de 5 (minimo para passar: 3)")

   se(pts >= 3) entao
      Passou <- 1
   senao
      Passou <- 0
      Reprovacoes <- Reprovacoes + 1
   fimse
fimprocedimento

Inicio

   Saldo_banco <- 1000
   Saldo_carteira <- 0
   Profissao <- "Desempregado"
   Quantidade_ganhos <- 0
   Apostas_dia <- 0
   Quantidade_historico <- 0
   Total_ganhos <- 0

   // CATALOGO, INVENTARIO E ENTREVISTAS
   Carregar_catalogo
   Carregar_entrevistas
   Total_gasto <- 0
   Qtd_transferencias <- 0
   Reprovacoes <- 0
   Passou <- 0
   Total_desvalorizado <- 0
   Dias_passados <- 0
   Meses_passados <- 0

   // Inicializacao dos sistemas
   Carregar_carreiras
   Carregar_empresas
   // Estado inicial da vida profissional.
   Escolaridade_nivel <- 0
   Historico_qtd <- 0
   Demissoes_total <- 0
   Advertencias_historicas <- 0
   Candidatura_ativa <- 0
   Emprego_id <- 0
   Empregador_atual <- ""
   Salario_oferta <- 0
   Desempenho <- 70
   Advertencias <- 0
   Falhas_graves <- 0
   Faltas_seguidas <- 0
   Dias_desempenho_baixo <- 0
   Aumento_atual <- 0
   Ultimo_aumento <- 0
   Inicio_emprego <- 0
   para Idx de 1 ate 3 faca
      Curso_feito[Idx] <- 0
      Experiencia_total[Idx] <- 0
      Melhor_cargo[Idx] <- 1
   fimpara
   Iniciar_vagas

   para Idx de 1 ate 12 faca
      Conquista[Idx] <- 0
   fimpara
   Dias_trabalhados_total <- 0
   Trabalhos_hoje <- 0
   Horas_extras_hoje <- 0
   Energia <- 100
   Indice_apostas <- 0
   Apostou_hoje <- 0
   Total_apostas <- 0
   Dias_sem_apostar <- 0
   Emprestimo_ativo <- 0
   Divida_emprestimo <- 0
   Parcela_emprestimo <- 0
   Prazo_emprestimo <- 0
   Meses_restantes <- 0
   Investimento_pendente <- 0
   Dia_resgate_investimento <- 0
   Investimentos_total <- 0
   Desconto_supermercado <- 0
   Vitoria <- 0

   // Saude inicial
   Vida <- 100
   Fome <- 10
   Sede <- 10
   Doente <- 0
   Internado <- 0
   Custo_saude <- 0

   Ano_atual <- 2026
   Carregar_textos_data
   Atualizar_data

   escreval("=================================")
   escreval("        SIMULADOR DE VIDA        ")
   escreval("=================================")
   escreval()

   escreval("Como seu personagem vai se chamar?")
   escreva("Nome do jogador: ")
   leia(Nome)

   Tutorial_inicial

   repita

      Verificar_conquistas

      escreval("=================================")
      escreval("        SIMULADOR DE VIDA        ")
      escreval("=================================")
      escreval()

      escreval("Jogador: ", Nome)
      escreval("Profissao: ", Profissao)
      se(Profissao = "Entregador") entao
         escreval("Cargo atual: ", Nome_nivel[1, Nivel_carreira[1]], " | Expedientes na carreira: ", Dias_carreira[1])
      fimse
      se(Profissao = "Atendente") entao
         escreval("Cargo atual: ", Nome_nivel[2, Nivel_carreira[2]], " | Expedientes na carreira: ", Dias_carreira[2])
      fimse
      se(Profissao = "Programador") entao
         escreval("Cargo atual: ", Nome_nivel[3, Nivel_carreira[3]], " | Expedientes na carreira: ", Dias_carreira[3])
      fimse
      escreval("Data: ", Data_txt)
      escreval()

      escreval("1 - Banco")
      escreval("2 - Trabalho")
      escreval("3 - Jogos")
      escreval("4 - Mercado")
      escreval("5 - Concessionaria")
      escreval("6 - Imobiliaria")
      escreval("7 - Medico / Saude")
      escreval("8 - Inventario")
      escreval("9 - Estatisticas")
      escreval("10 - Patrimonio")
      escreval("11 - Empreendedorismo")
      escreval("12 - Sair")
      escreval("13 - Dormir (passar para o proximo dia)")
      escreval("14 - Como Jogar")
      escreval("15 - Curriculo")
      Mostrar_energia
      escreval("Expedientes hoje: ", Trabalhos_hoje, "/3 | Horas extras: ", Horas_extras_hoje, "/5")
      escreva("Digite a sua opcao: ")
      leia(Opcao)

      escolha Opcao

      caso 1

         limpatela()
         escreval("=====================")
         escreval("        BANCO        ")
         escreval("=====================")
         escreval()

         escreval("Conta bancaria")
         escreval()

         escreval("1 - Depositar dinheiro")
         escreval("2 - Sacar dinheiro")
         escreval("3 - Consultar saldo no banco")
         escreval("4 - Consultar saldo na carteira")
         escreval("5 - Voltar")
         escreval("6 - Consultar emprestimo")
         escreval("7 - Solicitar emprestimo")
         escreval("8 - Quitar emprestimo")
         escreval()

         escreva("Digite a sua opcao: ")
         leia(Opcao_banco)

         se(Opcao_banco = 1) entao

            escreva("Digite a quantidade desejada para depositar: ")
            leia(Quantidade_deposito)

            se(Quantidade_deposito <= Saldo_carteira) e (Quantidade_deposito > 0) entao

               Saldo_carteira <- Saldo_carteira - Quantidade_deposito
               Saldo_banco <- Saldo_banco + Quantidade_deposito

               escreval("Deposito feito.")

            senao

               escreval("Confira o valor e o saldo da carteira.")

            fimse
         fimse

         se(Opcao_banco = 2) entao

            escreva("Digite a quantidade desejada para sacar: ")
            leia(Quantidade_saque)

            se(Quantidade_saque <= Saldo_banco) e (Quantidade_saque > 0) entao

               Saldo_banco <- Saldo_banco - Quantidade_saque
               Saldo_carteira <- Saldo_carteira + Quantidade_saque

               escreval("Saque feito.")

            senao

               escreval("Confira o valor e o saldo do banco.")

            fimse
         fimse

         se(Opcao_banco = 3) entao

            limpatela()
            escreval("Seu atual saldo no banco e de: R$ ", Saldo_banco:0:2)

         fimse

         se(Opcao_banco = 4) entao

            limpatela()
            escreval("Seu atual saldo na carteira e de: R$ ", Saldo_carteira:0:2)

         fimse

         se(Opcao_banco = 5) entao

            escreval("Voltando para o menu inicial...")

         fimse

         se(Opcao_banco = 6) entao
            limpatela()
            se(Emprestimo_ativo = 1) entao
               escreval("Divida atual: R$ ", Divida_emprestimo:0:2)
               escreval("Prazo original: ", Prazo_emprestimo, " meses")
               escreval("Parcelas restantes: ", Meses_restantes)
               escreval("Valor estimado da proxima parcela: R$ ", Parcela_emprestimo:0:2)
            senao
               escreval("Nao ha emprestimo em aberto.")
            fimse
         fimse

         se(Opcao_banco = 7) entao
            escreval("Emprestimos de R$ 500,00 ate R$ 10.000,00.")
            escreval("Juros totais do contrato: 15%, pagos em 3 meses.")
            se(Emprestimo_ativo = 1) entao
               escreval("Voce ja possui um emprestimo ativo. Quite-o antes de solicitar outro.")
            senao
               escreva("Valor desejado: R$ ")
               leia(Valor_emprestimo)
               se(Valor_emprestimo >= 500) e (Valor_emprestimo <= 10000) entao
                  Divida_emprestimo <- Valor_emprestimo * 1.15
                  Prazo_emprestimo <- 3
                  Meses_restantes <- 3
                  Parcela_emprestimo <- Divida_emprestimo / 3
                  Emprestimo_ativo <- 1
                  Saldo_banco <- Saldo_banco + Valor_emprestimo
                  escreval("Emprestimo contratado. Depositado no banco: R$ ", Valor_emprestimo:0:2)
                  escreval("Divida total contratada: R$ ", Divida_emprestimo:0:2)
               senao
                  escreval("Valor invalido. O limite e de R$ 500,00 a R$ 10.000,00.")
               fimse
            fimse
         fimse

         se(Opcao_banco = 8) entao
            se(Emprestimo_ativo = 0) entao
               escreval("Nao ha emprestimo em aberto.")
            senao
               escreval("Divida atual: R$ ", Divida_emprestimo:0:2)
               escreva("Quanto deseja pagar? R$ ")
               leia(Valor_emprestimo)
               se(Valor_emprestimo > 0) e (Valor_emprestimo <= Divida_emprestimo) e (Valor_emprestimo <= (Saldo_banco + Saldo_carteira)) entao
                  se(Saldo_carteira >= Valor_emprestimo) entao
                     Saldo_carteira <- Saldo_carteira - Valor_emprestimo
                  senao
                     Valor_pago <- Valor_emprestimo - Saldo_carteira
                     Saldo_carteira <- 0
                     Saldo_banco <- Saldo_banco - Valor_pago
                  fimse
                  Divida_emprestimo <- Divida_emprestimo - Valor_emprestimo
                  Total_gasto <- Total_gasto + Valor_emprestimo
                  se(Emprestimo_ativo = 1) e (Meses_restantes > 0) entao
                     Parcela_emprestimo <- Divida_emprestimo / Meses_restantes
                  fimse
                  escreval("Pagamento realizado. Divida restante: R$ ", Divida_emprestimo:0:2)
                  se(Divida_emprestimo < 0.01) entao
                     Divida_emprestimo <- 0
                     Emprestimo_ativo <- 0
                     Meses_restantes <- 0
                     escreval("Emprestimo quitado.")
                  fimse
               senao
                  escreval("Pagamento invalido ou saldo insuficiente.")
               fimse
            fimse
         fimse

         se(Opcao_banco < 1) ou (Opcao_banco > 8) entao

            escreval("Opcao invalida.")

         fimse

      caso 2

         limpatela()

         escreval("========================")
         escreval("        TRABALHO        ")
         escreval("========================")
         escreval()

         escreval("Vagas e trabalho")
         escreval()

         escreval("1 - Consultar vagas")
         escreval("2 - Candidatar-se a uma vaga")
         escreval("3 - Trabalhar")
         escreval("4 - Transferencia de emprego")
         escreval("5 - Historico de ganhos")
         escreval("6 - Voltar")
         escreval("7 - Meu curriculo")
         escreval("8 - Estudos e cursos")
         escreval("9 - Solicitar aumento")
         escreval("10 - Acompanhar candidatura")
         escreval()

         escreva("Digite a sua opcao: ")
         leia(Opcao_trabalho)

         se(Opcao_trabalho = 1) entao
            limpatela()
            Consultar_vagas
         fimse

         se(Opcao_trabalho = 2) entao
            limpatela()
            Candidatar(1)
         fimse

         se(Opcao_trabalho = 3) entao

            se(Trabalhos_hoje >= 3) entao
               escreval("Voce ja trabalhou 3 vezes hoje. Durma para comecar um novo dia.")
            senao
            se(Energia < 50) entao
               escreval("Sua energia esta em ", Energia, ". E preciso ter pelo menos 50 para trabalhar.")
               escreval("Durma para recuperar 10 pontos.")
            senao
            se(Doente = 1) ou (Internado = 1) entao
               escreval("Voce precisa se recuperar antes de trabalhar.")
            senao

               Salario_entregador <- Salario_cargo[1] * Multiplicador_carreira[1, Nivel_carreira[1]]
                se(Emprego_id = 1) entao
                   Salario_entregador <- Salario_oferta * Multiplicador_carreira[1, Nivel_carreira[1]] * (1 + Aumento_atual)
                fimse
               Salario_atendente <- Salario_cargo[2] * Multiplicador_carreira[2, Nivel_carreira[2]]
                se(Emprego_id = 2) entao
                   Salario_atendente <- Salario_oferta * Multiplicador_carreira[2, Nivel_carreira[2]] * (1 + Aumento_atual)
                fimse
               Salario_programador <- Salario_cargo[3] * Multiplicador_carreira[3, Nivel_carreira[3]]
                se(Emprego_id = 3) entao
                   Salario_programador <- Salario_oferta * Multiplicador_carreira[3, Nivel_carreira[3]] * (1 + Aumento_atual)
                fimse

               limpatela()

               se(Profissao = "Desempregado") entao

                  escreval("Escolha uma profissao antes de trabalhar.")

               senao

                  se(Profissao = "Entregador") entao

                     escreval("=======================================")
                     escreval("        CENTRAL DE ENTREGADORES        ")
                     escreval("=======================================")
                     escreval()

                     escreval("Turno de entregas")
                     escreval("Quantas entregas neste expediente? (Maximo 8)")
                     escreva("Digite a quantidade: ")
                     leia(Quantidade_entregas)
                     escreval()

                     se (Quantidade_entregas >= 1) e (Quantidade_entregas <= 8) entao

                        Saldo_carteira <- Saldo_carteira + (Salario_entregador * Quantidade_entregas)

                        Registrar_ganho(Salario_entregador * Quantidade_entregas, "Entregador")

                        escreval("Entregas concluidas.")
                        escreval("")
                        escreval("Entregas: ", Quantidade_entregas, " | Recebido: R$ ", (Salario_entregador * Quantidade_entregas):0:2)
                        Registrar_dia_trabalho(1)
                        Trabalhos_hoje <- Trabalhos_hoje + 1
                        Pagamento_expediente <- Salario_entregador * Quantidade_entregas
                        Oferecer_horas_extras(Pagamento_expediente)
                         Evento_profissional

                     senao

                        escreval("Quantidade fora do limite permitido.")

                     fimse
                  fimse

                  se(Profissao = "Atendente") entao

                     escreval("============================")
                     escreval("        SUPERMERCADO        ")
                     escreval("============================")
                     escreval()

                     escreval("Escala do supermercado")
                     escreval("Qual escala deseja cumprir neste expediente?")
                     escreval("1 - 1 Turno ( Manha ) ")
                     escreval("2 - 1 Turno ( Tarde ) ")
                     escreval("3 - 1 Turno ( Noite ) ")
                     escreval("4 - 2 Turnos ( Manha / Tarde ) ")
                     escreval("5 - 2 Turnos ( Manha / Noite ) ")
                     escreval("6 - 2 Turnos ( Tarde / Noite ) ")
                     escreva("Digite a sua opcao: ")
                     leia(Quantidade_turnos)
                     escreval()

                     se (Quantidade_turnos >= 1) e (Quantidade_turnos <= 3) entao

                        Saldo_carteira <- Saldo_carteira + Salario_atendente

                        Registrar_ganho(Salario_atendente, "Atendente")

                        escreval("Turno concluido.")
                        escreval("")
                        escreval("1 turno concluido. Recebido: R$ ", Salario_atendente:0:2)
                        Registrar_dia_trabalho(2)
                        Trabalhos_hoje <- Trabalhos_hoje + 1
                        Pagamento_expediente <- Salario_atendente
                        Oferecer_horas_extras(Pagamento_expediente)
                         Evento_profissional

                     senao

                        se (Quantidade_turnos >= 4) e (Quantidade_turnos <= 6) entao

                           Saldo_carteira <- Saldo_carteira + (Salario_atendente * 2)

                           Registrar_ganho(Salario_atendente * 2, "Atendente")

                           escreval("Turno concluido.")
                           escreval("")
                           escreval("2 turnos concluidos. Recebido: R$ ", (Salario_atendente * 2):0:2)
                           Registrar_dia_trabalho(2)
                           Trabalhos_hoje <- Trabalhos_hoje + 1
                           Pagamento_expediente <- Salario_atendente * 2
                           Oferecer_horas_extras(Pagamento_expediente)
                         Evento_profissional

                        senao

                           escreval("Escolha um turno entre 1 e 6.")

                        fimse
                     fimse
                  fimse

                  se(Profissao = "Programador") entao

                     escreval("=======================")
                     escreval("        EMPRESA        ")
                     escreval("=======================")
                     escreval()

                     escreval("Projetos disponiveis")
                     escreval("Quantos projetos neste expediente? (Maximo 2)")
                     escreva("Digite a quantidade: ")
                     leia(Quantidade_projetos)
                     escreval()

                     se (Quantidade_projetos >= 1) e (Quantidade_projetos <= 2) entao

                        Saldo_carteira <- Saldo_carteira + (Salario_programador * Quantidade_projetos)

                        Registrar_ganho(Salario_programador * Quantidade_projetos, "Programador")

                        escreval("Turno concluido.")
                        escreval("")
                        escreval("Projetos: ", Quantidade_projetos, " | Recebido: R$ ", (Salario_programador * Quantidade_projetos):0:2)
                        Registrar_dia_trabalho(3)
                        Trabalhos_hoje <- Trabalhos_hoje + 1
                        Pagamento_expediente <- Salario_programador * Quantidade_projetos
                        Oferecer_horas_extras(Pagamento_expediente)
                         Evento_profissional

                     senao

                        escreval("Quantidade fora do limite permitido.")

                     fimse
                  fimse
               fimse
            fimse
            fimse
            fimse
         fimse

         se(Opcao_trabalho = 4) entao
            limpatela()
            se(Profissao = "Desempregado") entao
               escreval("Use Candidatar-se para procurar seu primeiro emprego.")
            senao
               escreval("Transferencia: taxa de R$ 1500 no banco.")
               escreval("O resultado da seletiva pode levar alguns dias.")
               Candidatar(2)
            fimse
         fimse

         se(Opcao_trabalho = 5) entao

            limpatela()
            escreval("===== HISTORICO DE GANHOS =====")

            se(Quantidade_ganhos = 0) entao
               escreval("Nenhum ganho registrado ainda.")
            senao
               se(Quantidade_ganhos > Quantidade_historico) entao
                  escreval("Mostrando os ", Quantidade_historico, " pagamentos mais recentes de ", Quantidade_ganhos, " no total.")
                  escreval()
               fimse
               para i de 1 ate Quantidade_historico faca
                  escreval(i, " - ", Descricao[i], " - R$ ", Historico[i]:0:2)
               fimpara
            fimse
         fimse

         se(Opcao_trabalho = 7) entao
            Consultar_curriculo
         fimse
         se(Opcao_trabalho = 8) entao
            Menu_estudos
         fimse
         se(Opcao_trabalho = 9) entao
            Pedir_aumento
         fimse
         se(Opcao_trabalho = 10) entao
            se(Candidatura_ativa = 1) entao
               escreval("Aguardando resposta de ", Candidatura_empresa)
               escreval("Faltam ", Candidatura_prazo - Dias_passados, " dia(s).")
            senao
               escreval("Nao ha processo seletivo pendente.")
            fimse
         fimse
         se(Opcao_trabalho = 6) entao

            escreval("Voltando para o menu inicial...")

         fimse

         se(Opcao_trabalho < 1) ou (Opcao_trabalho > 10) entao

            escreval("Opcao invalida.")

         fimse

      caso 3

         se(Doente = 1) ou (Internado = 1) entao
            escreval("Acesso ao cassino bloqueado: voce precisa estar saudavel e fora do hospital.")
         senao

            limpatela()

            escreval("========================")
            escreval("         CASSINO        ")
            escreval("========================")
            escreval()

            escreval("Escolha o jogo.")
            escreval("Limite: 5 apostas por dia, maximo de R$ 1.000,00 por aposta.")
            escreval("Apostas realizadas hoje: ", Apostas_dia, "/5")
            escreval("Indicador de apostas frequentes: ", Indice_apostas, "/100")
            escreval("Dias sem apostar: ", Dias_sem_apostar)
            escreval()
            escreval("1 - Roleta")
            escreval("2 - Caca-niquel")
            escreval("3 - Blackjack")
            escreval("4 - Voltar")
            escreval()

            escreva("Escolha um jogo: ")
            leia(Opcao_cassino)

            se(Opcao_cassino = 1) entao

               limpatela()

               escreval("========================")
               escreval("         ROLETA         ")
               escreval("========================")
               escreval()

               escreval("Escolha a cor que deseja apostar:")
               escreval("1 - Vermelho (45%) - paga 2x")
               escreval("2 - Preto (45%) - paga 2x")
               escreval("3 - Verde (10%) - paga 8x")
               escreva("Sua escolha: ")
               leia(Opcao_cor)
               escreval()

               se(Opcao_cor >= 1) e (Opcao_cor <= 3) entao

                  escreva("Digite o valor da aposta (maximo R$ 1.000,00): R$ ")
                  leia(Aposta_roleta)

                  se(Aposta_roleta > 0) e (Aposta_roleta <= Saldo_carteira) e (Aposta_roleta <= 1000) e (Apostas_dia < 5) entao

                     Retorno_roleta <- 0

                     escreva("Digite uma letra para girar: ")
                     leia(Tecla)

                     Sorteio_roleta <- randi(100) + 1

                     Apostas_dia <- Apostas_dia + 1

                     Apostou_hoje <- 1

                     Total_apostas <- Total_apostas + 1

                     Indice_apostas <- Indice_apostas + 6

                     se(Indice_apostas > 100) entao

                        Indice_apostas <- 100

                     fimse
                     Saldo_carteira <- Saldo_carteira - Aposta_roleta

                     se(Sorteio_roleta <= 45) entao

                        escreval()
                        escreval("Resultado: Vermelho")

                        se(Opcao_cor = 1) entao
                           Retorno_roleta <- Aposta_roleta * 2
                        fimse

                     senao

                        se(Sorteio_roleta <= 90) entao

                           escreval()
                           escreval("Resultado: Preto")

                           se(Opcao_cor = 2) entao
                              Retorno_roleta <- Aposta_roleta * 2
                           fimse

                        senao

                           escreval()
                           escreval("Resultado: Verde")

                           se(Opcao_cor = 3) entao
                              Retorno_roleta <- Aposta_roleta * 8
                           fimse

                        fimse
                     fimse

                     Saldo_carteira <- Saldo_carteira + Retorno_roleta

                     escreval()
                     escreval("Retorno total: R$ ", Retorno_roleta:0:2)

                     se(Retorno_roleta = 0) entao
                        escreval("Aposta perdida.")
                     senao
                        escreval("Voce acertou.")
                     fimse
                     escreval()

                     escreval("Saldo atual: R$ ", Saldo_carteira:0:2)

                  senao

                     escreval()
                     escreval("Confira o valor, seu saldo e o limite diario de apostas.")

                  fimse

               senao

                  escreval("Escolha uma cor valida.")

               fimse

            fimse

            se(Opcao_cassino = 2) entao

               limpatela()

               escreval("========================")
               escreval("       CACA-NIQUEL      ")
               escreval("========================")
               escreval()

               escreva("Digite o valor da aposta (maximo R$ 1.000,00): R$ ")
               leia(Aposta_niquel)

               se(Aposta_niquel > 0) e (Aposta_niquel <= Saldo_carteira) e (Aposta_niquel <= 1000) e (Apostas_dia < 5) entao

                  Premio_total <- 0
                  Premio_linha <- 0

                  Apostas_dia <- Apostas_dia + 1

                  Apostou_hoje <- 1

                  Total_apostas <- Total_apostas + 1

                  Indice_apostas <- Indice_apostas + 6

                  se(Indice_apostas > 100) entao

                     Indice_apostas <- 100

                  fimse
                  Saldo_carteira <- Saldo_carteira - Aposta_niquel

                  escreva("Digite uma letra para girar: ")
                  leia(Tecla)

                  para Linha de 1 ate 3 faca

                     para Coluna de 1 ate 3 faca

                        Matriz[Linha, Coluna] <- randi(9) + 1

                     fimpara

                  fimpara

                  limpatela()

                  escreval("========================")
                  escreval("       RESULTADO        ")
                  escreval("========================")
                  escreval()

                  para Linha de 1 ate 3 faca

                     para Coluna de 1 ate 3 faca

                        escreva(Matriz[Linha, Coluna], "  ")

                     fimpara

                     escreval()

                  fimpara

                  escreval()
                  escreval("Verificando combinacoes...")
                  escreval()


                  para Linha de 1 ate 3 faca

                     se(Matriz[Linha, 1] = Matriz[Linha, 2]) e (Matriz[Linha, 2] = Matriz[Linha, 3]) entao

                        Premio_linha <- Aposta_niquel * 2
                        Premio_total <- Premio_total + Premio_linha

                        escreval("Linha horizontal! Premio: R$ ", Premio_linha:0:2)

                     fimse

                  fimpara


                  para Coluna de 1 ate 3 faca

                     se(Matriz[1, Coluna] = Matriz[2, Coluna]) e (Matriz[2, Coluna] = Matriz[3, Coluna]) entao

                        Premio_linha <- Aposta_niquel * 3
                        Premio_total <- Premio_total + Premio_linha

                        escreval("Linha vertical! Premio: R$ ", Premio_linha:0:2)

                     fimse

                  fimpara


                  se(Matriz[1, 1] = Matriz[2, 2]) e (Matriz[2, 2] = Matriz[3, 3]) entao

                     Premio_linha <- Aposta_niquel * 5
                     Premio_total <- Premio_total + Premio_linha

                     escreval("Diagonal principal! Premio: R$ ", Premio_linha:0:2)

                  fimse


                  se(Matriz[1, 3] = Matriz[2, 2]) e (Matriz[2, 2] = Matriz[3, 1]) entao

                     Premio_linha <- Aposta_niquel * 5
                     Premio_total <- Premio_total + Premio_linha

                     escreval("Diagonal secundaria! Premio: R$ ", Premio_linha:0:2)

                  fimse

                  // LIMITE DE PREMIO: impede acumulacao exagerada de varias linhas
                  se(Premio_total > (Aposta_niquel * 5)) entao
                     Premio_total <- Aposta_niquel * 5
                  fimse

                  Saldo_carteira <- Saldo_carteira + Premio_total

                  escreval()
                  escreval("========================")
                  escreval("     RESULTADO FINAL    ")
                  escreval("========================")
                  escreval()

                  se(Premio_total > 0) entao

                     escreval("Voce ganhou.")
                     escreval("Premio total: R$ ", Premio_total:0:2)

                  senao

                     escreval("Nenhuma combinacao premiada.")
                     escreval("Aposta perdida.")

                  fimse

                  escreval()
                  escreval("Saldo atual: R$ ", Saldo_carteira:0:2)

               senao

                  escreval("Confira o valor, seu saldo e o limite diario de apostas.")

               fimse

            fimse

            se(Opcao_cassino = 3) entao

               limpatela()
               escreval("========================")
               escreval("        BLACKJACK       ")
               escreval("========================")
               escreval()
               escreva("Digite o valor da aposta (maximo R$ 1.000,00): R$ ")
               leia(Aposta_blackjack)

               se(Aposta_blackjack > 0) e (Aposta_blackjack <= Saldo_carteira) e (Aposta_blackjack <= 1000) e (Apostas_dia < 5) entao

                  Apostas_dia <- Apostas_dia + 1

                  Apostou_hoje <- 1

                  Total_apostas <- Total_apostas + 1

                  Indice_apostas <- Indice_apostas + 6

                  se(Indice_apostas > 100) entao

                     Indice_apostas <- 100

                  fimse
                  Saldo_carteira <- Saldo_carteira - Aposta_blackjack
                  Retorno_blackjack <- 0

                  // CARTAS INICIAIS (1 = As, 11/12/13 = figuras valendo 10)
                  Total_jogador <- 0
                  Ases_jogador <- 0
                  Total_banca <- 0
                  Ases_banca <- 0

                  Sacar_carta_jogador
                  Sacar_carta_jogador
                  Sacar_carta_banca
                  Carta_visivel_banca <- Carta
                  Sacar_carta_banca

                  Natural_jogador <- 0
                  Natural_banca <- 0
                  se(Pontos_jogador = 21) entao
                     Natural_jogador <- 1
                  fimse
                  se(Pontos_banca = 21) entao
                     Natural_banca <- 1
                  fimse

                  escreval("Sua pontuacao: ", Pontos_jogador)
                  se(Carta_visivel_banca = 1) entao
                     escreval("Carta visivel da banca: As (vale 1 ou 11)")
                  senao
                     escreval("Carta visivel da banca: ", Carta_visivel_banca)
                  fimse
                  escreval("(O As vale 11 ou 1 automaticamente, do jeito mais favoravel)")
                  escreval()

                  Opcao_blackjack <- 1
                  enquanto (Pontos_jogador < 21) e (Opcao_blackjack = 1) faca
                     escreval("1 - Comprar outra carta")
                     escreval("2 - Parar")
                     escreva("Escolha: ")
                     leia(Opcao_blackjack)

                     se(Opcao_blackjack = 1) entao
                        Sacar_carta_jogador
                        escreval("Sua pontuacao agora: ", Pontos_jogador)
                     senao
                        se(Opcao_blackjack <> 2) entao
                           escreval("Opcao invalida. Sua vez foi encerrada.")
                           Opcao_blackjack <- 2
                        fimse
                     fimse
                  fimenquanto

                  // VEZ DA BANCA (compra ate chegar a 17 ou mais)
                  se(Pontos_jogador <= 21) e (Natural_jogador = 0) entao
                     enquanto (Pontos_banca < 17) faca
                        Sacar_carta_banca
                     fimenquanto
                  fimse

                  escreval()
                  escreval("Sua pontuacao: ", Pontos_jogador)
                  escreval("Pontuacao da banca: ", Pontos_banca)

                  se(Pontos_jogador > 21) entao
                     escreval("Voce passou de 21. A banca ganhou.")
                  senao
                     se(Natural_jogador = 1) e (Natural_banca = 0) entao
                        Retorno_blackjack <- (Aposta_blackjack * 5) / 2
                        Saldo_carteira <- Saldo_carteira + Retorno_blackjack
                        escreval("Blackjack: pagamento de 2,5 vezes a aposta.")
                        escreval("Retorno: R$ ", Retorno_blackjack:0:2)
                     senao
                        se(Natural_jogador = 0) e (Natural_banca = 1) entao
                           escreval("A banca fez blackjack e ganhou a rodada.")
                        senao
                           se(Pontos_banca > 21) ou (Pontos_jogador > Pontos_banca) entao
                              Retorno_blackjack <- Aposta_blackjack * 2
                              Saldo_carteira <- Saldo_carteira + Retorno_blackjack
                              escreval("Voce ganhou a rodada.")
                              escreval("Retorno: R$ ", Retorno_blackjack:0:2)
                           senao
                              se(Pontos_jogador = Pontos_banca) entao
                                 Retorno_blackjack <- Aposta_blackjack
                                 Saldo_carteira <- Saldo_carteira + Retorno_blackjack
                                 escreval("Empate. Aposta devolvida.")
                              senao
                                 escreval("A banca ganhou a rodada.")
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse

                  escreval("Saldo atual: R$ ", Saldo_carteira:0:2)
               senao
                  escreval("Confira o valor, seu saldo e o limite diario de apostas.")
               fimse
            fimse

            se(Opcao_cassino = 4) entao
               escreval("Voltando ao menu principal...")
            fimse

            se(Opcao_cassino < 1) ou (Opcao_cassino > 4) entao
               escreval("Opcao invalida.")
            fimse

         fimse

      caso 4

         limpatela()
         escreval("========================")
         escreval("         MERCADO        ")
         escreval("========================")
         escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
         escreval()
         escreval("1 - Alimentos (frutas, carnes e massas)")
         escreval("2 - Bebidas")
         escreval("3 - Roupas")
         escreval("4 - Calcados")
         escreval("5 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_mercado)

         se(Opcao_mercado = 1) entao
            Comprar_catalogo(1, 1, 10, "MERCADO - ALIMENTOS")
         fimse
         se(Opcao_mercado = 2) entao
            Comprar_catalogo(1, 11, 16, "MERCADO - BEBIDAS")
         fimse
         se(Opcao_mercado = 3) entao
            Comprar_catalogo(1, 17, 22, "MERCADO - ROUPAS")
         fimse
         se(Opcao_mercado = 4) entao
            Comprar_catalogo(1, 23, 26, "MERCADO - CALCADOS")
         fimse
         se(Opcao_mercado = 5) entao
            escreval("Voltando ao menu principal...")
         fimse
         se(Opcao_mercado < 1) ou (Opcao_mercado > 5) entao
            escreval("Opcao invalida.")
         fimse

      caso 5

         limpatela()
         escreval("==============================")
         escreval("        CONCESSIONARIA        ")
         escreval("==============================")
         escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
         escreval()
         escreval("1 - Bicicletas")
         escreval("2 - Motos")
         escreval("3 - Carros")
         escreval("4 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_concessionaria)

         se(Opcao_concessionaria = 1) entao
            Comprar_catalogo(2, 27, 30, "CONCESSIONARIA - BICICLETAS")
         fimse
         se(Opcao_concessionaria = 2) entao
            Comprar_catalogo(2, 31, 34, "CONCESSIONARIA - MOTOS")
         fimse
         se(Opcao_concessionaria = 3) entao
            Comprar_catalogo(2, 35, 40, "CONCESSIONARIA - CARROS")
         fimse
         se(Opcao_concessionaria = 4) entao
            escreval("Voltando ao menu principal...")
         fimse
         se(Opcao_concessionaria < 1) ou (Opcao_concessionaria > 4) entao
            escreval("Opcao invalida.")
         fimse

      caso 6

         limpatela()
         escreval("==============================")
         escreval("         IMOBILIARIA          ")
         escreval("==============================")
         escreval("Saldo no banco: R$ ", Saldo_banco:0:2)
         escreval()
         escreval("1 - Kitnets e apartamentos")
         escreval("2 - Casas e sitio")
         escreval("3 - Mansoes")
         escreval("4 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_imobiliaria)

         se(Opcao_imobiliaria = 1) entao
            Comprar_catalogo(3, 41, 44, "IMOBILIARIA - KITNETS E APARTAMENTOS")
         fimse
         se(Opcao_imobiliaria = 2) entao
            Comprar_catalogo(3, 45, 48, "IMOBILIARIA - CASAS E SITIO")
         fimse
         se(Opcao_imobiliaria = 3) entao
            Comprar_catalogo(3, 49, 50, "IMOBILIARIA - MANSOES")
         fimse
         se(Opcao_imobiliaria = 4) entao
            escreval("Voltando ao menu principal...")
         fimse
         se(Opcao_imobiliaria < 1) ou (Opcao_imobiliaria > 4) entao
            escreval("Opcao invalida.")
         fimse

      caso 7

         limpatela()
         escreval("==============================")
         escreval("         MEDICO / SAUDE       ")
         escreval("==============================")
         escreval("Vida: ", Vida, "/100")
         escreval("Fome: ", Fome, "/10")
         escreval("Sede: ", Sede, "/10")
         se(Doente = 1) entao
            escreval("Estado: DOENTE")
         senao
            escreval("Estado: Saudavel")
         fimse
         se(Internado = 1) entao
            escreval("Situacao: INTERNADO - diaria de R$ 350,00 (atendimento publico gratuito se faltar dinheiro)")
         fimse
         escreval()
         escreval("1 - Tratar doenca (R$ 450,00)")
         escreval("2 - Recuperar vida (R$ 25,00 por ponto)")
         escreval("3 - Comer alimento do inventario (+2 fome)")
         escreval("4 - Beber bebida do inventario (+3 sede)")
         escreval("5 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_saude)

         se(Opcao_saude = 1) entao
            se(Doente = 0) entao
               escreval("Voce nao precisa desse tratamento.")
            senao
               se((Saldo_carteira + Saldo_banco) >= 450) entao
                  se(Saldo_carteira >= 450) entao
                     Saldo_carteira <- Saldo_carteira - 450
                  senao
                     Custo_saude <- 450 - Saldo_carteira
                     Saldo_carteira <- 0
                     Saldo_banco <- Saldo_banco - Custo_saude
                  fimse
                  Total_gasto <- Total_gasto + 450
                  Doente <- 0
                  Fome <- 10
                  Sede <- 10
                  escreval("Tratamento concluido. Voce se recuperou. Fome e sede restauradas.")
                  escreval("Sua vida permanece em ", Vida, "/100.")
               senao
                  escreval("Dinheiro insuficiente. O tratamento custa R$ 450,00.")
               fimse
            fimse
         fimse

         se(Opcao_saude = 2) entao
            escreva("Quantos pontos de vida deseja recuperar? ")
            leia(Pontos_recuperar)
            se(Pontos_recuperar > 0) e (Pontos_recuperar <= (100 - Vida)) entao
               Custo_saude <- Pontos_recuperar * 25
               se((Saldo_carteira + Saldo_banco) >= Custo_saude) entao
                  se(Saldo_carteira >= Custo_saude) entao
                     Saldo_carteira <- Saldo_carteira - Custo_saude
                  senao
                     Custo_saude <- Custo_saude - Saldo_carteira
                     Saldo_carteira <- 0
                     Saldo_banco <- Saldo_banco - Custo_saude
                  fimse
                  Total_gasto <- Total_gasto + (Pontos_recuperar * 25)
                  Vida <- Vida + Pontos_recuperar
                  se(Vida > 100) entao
                     Vida <- 100
                  fimse
                  escreval("Tratamento concluido. Vida: ", Vida, "/100")
                  se(Internado = 1) e (Vida >= 30) entao
                     Internado <- 0
                     escreval("Alta hospitalar liberada.")
                  fimse
               senao
                  escreval("Dinheiro insuficiente para esse tratamento.")
               fimse
            senao
               escreval("Quantidade invalida. Voce pode recuperar ate ", 100 - Vida, " pontos.")
            fimse
         fimse

         se(Opcao_saude = 3) entao
            escreval("Alimentos disponiveis:")
            para Item_saude de 1 ate 10 faca
               escreval(Item_saude, " - ", Item_nome[Item_saude], " | Quantidade: ", Item_qtd[Item_saude])
            fimpara
            escreva("Digite o numero do alimento: ")
            leia(Item_saude)
            se(Item_saude >= 1) e (Item_saude <= 10) entao
               se(Item_qtd[Item_saude] > 0) entao
                  Item_valor[Item_saude] <- Item_valor[Item_saude] - (Item_valor[Item_saude] / Item_qtd[Item_saude])
                  Item_qtd[Item_saude] <- Item_qtd[Item_saude] - 1
                  Fome <- Fome + 2
                  se(Fome > 10) entao
                     Fome <- 10
                  fimse
                  escreval("Alimento consumido. Fome: ", Fome, "/10")
               senao
                  escreval("Voce nao tem esse alimento.")
               fimse
            senao
               escreval("Opcao invalida.")
            fimse
         fimse

         se(Opcao_saude = 4) entao
            escreval("Bebidas disponiveis:")
            para Item_saude de 11 ate 16 faca
               escreval(Item_saude, " - ", Item_nome[Item_saude], " | Quantidade: ", Item_qtd[Item_saude])
            fimpara
            escreva("Digite o numero da bebida: ")
            leia(Item_saude)
            se(Item_saude >= 11) e (Item_saude <= 16) entao
               se(Item_qtd[Item_saude] > 0) entao
                  Item_valor[Item_saude] <- Item_valor[Item_saude] - (Item_valor[Item_saude] / Item_qtd[Item_saude])
                  Item_qtd[Item_saude] <- Item_qtd[Item_saude] - 1
                  Sede <- Sede + 3
                  se(Sede > 10) entao
                     Sede <- 10
                  fimse
                  escreval("Bebida consumida. Sede: ", Sede, "/10")
               senao
                  escreval("Voce nao tem essa bebida.")
               fimse
            senao
               escreval("Opcao invalida.")
            fimse
         fimse

         se(Opcao_saude = 5) entao
            escreval("Voltando ao menu principal...")
         fimse
         se(Opcao_saude < 1) ou (Opcao_saude > 5) entao
            escreval("Opcao invalida.")
         fimse

      caso 8

         limpatela()
         escreval("==============================")
         escreval("          INVENTARIO          ")
         escreval("==============================")
         escreval()
         escreval("ALIMENTOS")
         Mostrar_faixa(1, 10)
         escreval("BEBIDAS")
         Mostrar_faixa(11, 16)
         escreval("ROUPAS")
         Mostrar_faixa(17, 22)
         escreval("CALCADOS")
         Mostrar_faixa(23, 26)
         escreval()
         escreval("BICICLETAS")
         Mostrar_faixa(27, 30)
         escreval("MOTOS")
         Mostrar_faixa(31, 34)
         escreval("CARROS")
         Mostrar_faixa(35, 40)
         escreval()
         escreval("KITNETS E APARTAMENTOS")
         Mostrar_faixa(41, 44)
         escreval("CASAS E SITIO")
         Mostrar_faixa(45, 48)
         escreval("MANSOES")
         Mostrar_faixa(49, 50)
         escreval()
         escreval("1 - Vender itens do inventario")
         escreval("2 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_item)
         se(Opcao_item = 1) entao
            Vender_item
         senao
            se(Opcao_item <> 2) entao
               escreval("Opcao invalida.")
            fimse
         fimse

      caso 9

         limpatela()
         escreval("==============================")
         escreval("         ESTATISTICAS         ")
         escreval("==============================")
         escreval("Jogador: ", Nome)
         escreval("Profissao: ", Profissao)
         escreval()
         escreval("--- DINHEIRO ---")
         escreval("Saldo no banco: R$ ", Saldo_banco:0:2)
         escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
         escreval()
         escreval("--- CARREIRA ---")
         escreval("Total de ganhos registrados: R$ ", Total_ganhos:0:2)
         escreval("Pagamentos e ganhos registrados: ", Quantidade_ganhos)
         escreval("Expedientes em todas as carreiras: ", Dias_trabalhados_total)
         escreval("Entregador: ", Nome_nivel[1, Nivel_carreira[1]], " - ", Dias_carreira[1], " dias")
         escreval("Atendente: ", Nome_nivel[2, Nivel_carreira[2]], " - ", Dias_carreira[2], " dias")
         escreval("Programador: ", Nome_nivel[3, Nivel_carreira[3]], " - ", Dias_carreira[3], " dias")
         escreval("Transferencias de emprego aprovadas: ", Qtd_transferencias)
         escreval("Reprovacoes em entrevistas: ", Reprovacoes)
         escreval("Data: ", Data_txt)
         escreval("Dias jogados: ", Dias_passados)
         escreval("Apostas realizadas na partida: ", Total_apostas)
         escreval("Indicador de apostas frequentes: ", Indice_apostas, "/100")
         se(Emprestimo_ativo = 1) entao
            escreval("Divida bancaria atual: R$ ", Divida_emprestimo:0:2)
         fimse
         escreval()
         escreval("--- SAUDE ---")
         escreval("Vida: ", Vida, "/100")
         escreval("Fome: ", Fome, "/10")
         escreval("Sede: ", Sede, "/10")
         se(Doente = 1) entao
            escreval("Estado: Doente")
         senao
            escreval("Estado: Saudavel")
         fimse
         se(Internado = 1) entao
            escreval("Hospital: Internado")
         senao
            escreval("Hospital: Fora do hospital")
         fimse
         escreval("Total gasto (compras e taxas): R$ ", Total_gasto:0:2)
         escreval()
         escreval("--- BENS (valor atual; veiculos desvalorizam 2% ao mes) ---")

         Patrimonio <- Saldo_banco + Saldo_carteira
         Itens_total <- 0

         Calcular_valor(1, 16)
         escreval("Alimentos e bebidas: ", Qtd_categoria, " itens - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         Calcular_valor(17, 26)
         escreval("Roupas e calcados: ", Qtd_categoria, " itens - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         Calcular_valor(27, 30)
         escreval("Bicicletas: ", Qtd_categoria, " - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         Calcular_valor(31, 34)
         escreval("Motos: ", Qtd_categoria, " - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         Calcular_valor(35, 40)
         escreval("Carros: ", Qtd_categoria, " - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         Calcular_valor(41, 50)
         escreval("Imoveis: ", Qtd_categoria, " - R$ ", Valor_categoria:0:2)
         Patrimonio <- Patrimonio + Valor_categoria
         Itens_total <- Itens_total + Qtd_categoria

         escreval()
         escreval("--- EMPRESAS ---")
         para Idx de 1 ate 10 faca
            se(Empresa_ativa[Idx] = 1) entao
               Valor_empresa_total <- Empresa_capital[Idx] * (0.50 + (Empresa_reputacao[Idx] / 200) + ((Empresa_nivel[Idx] - 1) * 0.12) + ((Empresa_unidades[Idx] - 1) * 0.08))
               Patrimonio <- Patrimonio + Valor_empresa_total + Empresa_caixa[Idx] - Empresa_divida[Idx]
               escreval(Empresa_nome[Idx], " | Valor estimado: R$ ", Valor_empresa_total:0:2, " | Caixa: R$ ", Empresa_caixa[Idx]:0:2)
            fimse
         fimpara

         se(Investimento_pendente = 1) entao
            Patrimonio <- Patrimonio + 500
         fimse

         escreval()
         escreval("Total de itens no inventario: ", Itens_total)
         escreval("Desvalorizacao acumulada dos veiculos: R$ ", Total_desvalorizado:0:2)
         se(Emprestimo_ativo = 1) entao
            Patrimonio <- Patrimonio - Divida_emprestimo
         fimse
         escreval("Patrimonio liquido estimado: R$ ", Patrimonio:0:2)
         escreval("(Dinheiro + bens pelo valor atual, menos dividas e com desvalorizacao.)")

      caso 10

         limpatela()
         escreval("==============================")
         escreval("          PATRIMONIO          ")
         escreval("==============================")
         Atualizar_patrimonio
         escreval("Patrimonio total: R$ ", Patrimonio:0:2)
         escreval("Saldo no banco: R$ ", Saldo_banco:0:2)
         escreval("Saldo na carteira: R$ ", Saldo_carteira:0:2)
         se(Investimento_pendente = 1) entao
            escreval("Investimento pendente: R$ 500,00 | Resgate no dia ", Dia_resgate_investimento)
         fimse
         escreval("Total investido durante a partida: R$ ", Investimentos_total:0:2)
         escreval()
         escreval("1 - Consultar bens e valores")
         escreval("2 - Conquistas")
         escreval("3 - Voltar")
         escreva("Escolha: ")
         leia(Opcao_patrimonio)

         se(Opcao_patrimonio = 1) entao
            escreval()
            escreval("========== BENS E VALORES ==========")
            Itens_total <- 0

            Calcular_valor(1, 16)
            escreval("Alimentos e bebidas | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(1, 16)

            Calcular_valor(17, 26)
            escreval("Roupas e calcados | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(17, 26)

            Calcular_valor(27, 30)
            escreval("Bicicletas | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(27, 30)

            Calcular_valor(31, 34)
            escreval("Motos | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(31, 34)

            Calcular_valor(35, 40)
            escreval("Carros | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(35, 40)

            Calcular_valor(41, 50)
            escreval("Imoveis | Quantidade: ", Qtd_categoria, " | Valor: R$ ", Valor_categoria:0:2)
            Itens_total <- Itens_total + Qtd_categoria
            Mostrar_faixa(41, 50)

            se(Itens_total = 0) entao
               escreval("Voce ainda nao possui bens ou itens no inventario.")
            fimse

            escreval()
            escreval("========== EMPRESAS ==========")
            se(Qtd_empresas = 0) entao
               escreval("Voce ainda nao tem empresas.")
            senao
               para Idx de 1 ate 10 faca
                  se(Empresa_ativa[Idx] = 1) entao
                     escreval(Empresa_nome[Idx], " | Caixa: R$ ", Empresa_caixa[Idx]:0:2, " | Divida: R$ ", Empresa_divida[Idx]:0:2)
                  fimse
               fimpara
            fimse

            escreval()
            Atualizar_patrimonio
            escreval("Dinheiro no banco: R$ ", Saldo_banco:0:2)
            escreval("Dinheiro na carteira: R$ ", Saldo_carteira:0:2)
            se(Investimento_pendente = 1) entao
               escreval("Investimento pendente: R$ 500,00")
            fimse
            se(Emprestimo_ativo = 1) entao
               escreval("Divida bancaria: R$ ", Divida_emprestimo:0:2)
            senao
               escreval("Divida bancaria: R$ 0,00")
            fimse
            escreval("Patrimonio liquido: R$ ", Patrimonio:0:2)
         senao
            se(Opcao_patrimonio = 2) entao
               Mostrar_conquistas
            senao
               se(Opcao_patrimonio <> 3) entao
                  escreval("Opcao invalida.")
               fimse
            fimse
         fimse

      caso 11

         Menu_empreendedorismo

      caso 12

         escreval("Ate a proxima, ", Nome, "!")

      caso 13

         escreval("Voce foi dormir.")
         Passar_dia

      caso 14

         Como_jogar

      caso 15

         Consultar_curriculo

      outrocaso

         escreval("Opcao invalida.")

      fimescolha

      se(Opcao <> 12) entao
         escreval()
         escreval("Digite qualquer letra e pressione ENTER para continuar...")
         leia(Tecla)
         limpatela()
      fimse

   ate(Opcao = 12)

Fimalgoritmo
