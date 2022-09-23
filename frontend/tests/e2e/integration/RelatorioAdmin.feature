#language: pt
Funcionalidade: Gerar Relatório das notas para o Admin

Cenario: Um usuário não admin tenta acessar o Relatório
Dado que estou na rota "/admin/relatorio"
Então eu deveria ver um aviso de "não tenho acesso à página"

Cenario: Um usuário admin acessa após o lançamento das informações
Dado que estou na rota "/admin/relatorio"
Então eu deveria ver "as médias das turmas", dispostas em formato de tabela
E as "notas" devem ser separadas por disciplinas

Cenário: Um admin acessa antes do lançamento das notas
Dado que estou na rota "/admin/relatorio"
Então devo ver uma mensagem de "não há dados aqui ainda"