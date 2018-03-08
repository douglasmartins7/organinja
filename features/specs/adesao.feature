#language: pt

Funcionalidade: Adesão
    Sendo um visitante
    Posso fazer adesão do plano Stater
    Para que eu possa controlar minhas finanças

    Contexto: Acessar adesão
        Dado que acesso a página de adesão

    @adesao @smoke
    Cenario: Nova adesão

        Quando faço uma adesão com os dados:
            | Nome          | Fernando Papito        |
            | Email         | papito2@qaninja.io     |
            | Senha         | secret                 |
        Então meu cadastro é realizado com sucesso
        E sou redirecionado para o Dashboard

    @duplicado
    Cenario: Usuário duplicado

        Quando faço uma adesão com os dados:
            | Nome          | David Coopperfield     |
            | Email         | david@cpfield.com      |
            | Senha         | secret                 |
        Mas esta adesão é duplicada
        Então vejo a seguinte mensagem de alerta:
        """
        Já existe um usuário cadastrado com o email informado.
        """

    # @tentativa_adesao
    # Esquema do Cenario: Tentativa de adesão

    #     Quando faço uma adesão com os dados:
    #         | Nome  | <nome>  |
    #         | Email | <email> |
    #         | Senha | <senha> |
    #     Então vejo a seguinte mensagem de alerta:
    #     """
    #     <mensagem>
    #     """

    # Exemplos: 
    #   | nome     | email        | senha  | mensagem                                 |
    #   |          | eu@papito.io | 123456 | Você precisa informar seu nome completo. |
    #   | Fernando |              | 123456 | Você precisa informar seu email.         |
    #   | Fernando | eu@papito.io |        | Você precisa informar uma senha.         |

    # @tentativa_adesao2
    # Cenario: Tenativa de adesão sem refresh

    #     Quando faço uma tentativa de adesão:
    #         | Nome     | Email        | Senha  |
    #         |          | eu@papito.io | 123456 |
    #         | Fernando |              | 123456 |
    #         | Fernando | eu@papito.io |        |
    #     Então vejo uma mensagem de alerta com a lista:
    #         | Mensagem                                 |
    #         | Você precisa informar seu nome completo. |
    #         | Você precisa informar seu email.         |
    #         | Você precisa informar uma senha.         |