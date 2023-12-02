# Projeto de Banco de Dados

### Prof. Isidro - 3Q.2023 - UFABC
<br>

## Especificação do Sistema
Conversando com a minha namorada, **dentista** recém formada, identifiquei uma possível melhoria na forma como ela gerencia suas consultas e como ela armazena as informações sobre os seus pacientes.

Hoje ela imprime uma ficha chamada de **anamnese** onde contém diversas perguntas sobre o **paciente**, como dados pessoais (nome, telefone, e-mail, **endereço**, etc.) e perguntas sobre sua saúde, como se o paciente possui algum problema de saúde, se faz uso de algum medicamento, se é fumante, se possui sensibilidade nos dentes, etc. Nessa ficha cadastral também inclui um desenho de todos os dentes do paciente chamado de **odontograma** no qual a dentista consegue marcar quais dentes possuem restaurações, quais possuem implantes, quais tiveram que fazer canal, etc. Por fim, após a avaliação inicial do paciente, a dentista imprime uma outra ficha onde ela detalha o **plano de tratamento**, que consiste em especificar qual será o tratamento recomendado ao paciente e quais dias ele deverá retornar ao consultório para inicar o tratamento.

Além disso, os pacientes agendam as suas **consultas** via WhatsApp ou Instagram, e essas informações não são estruturadas, ou seja, o histórico das consultas só ficam nas conversas de cada paciente.

### Palavras-chave anotadas durante a entrevista:
Paciente;
Endereço;
Anamnese;
Consulta;
Plano de Tratamento;
Odontograma;
Material;

### Relatórios necessários para a dentista:
* Faturamento por paciente;
* Faturamento por tratamento;
* Faturamento por período (dia, semana, mês, ano);
* Quantidade de pacientes por período (dia, semana, mês, ano);
* Taxa de comparecimento por paciente;
* Tratamento mais vendido;
* Dia da semana com mais pacientes agendados;

<br>

## Modelagem Entidade-Relacionamento
![Modelo Entidade-Relacionamento](./Modelo%20Entidade-Relacionamento.png)

<br>

## Modelagem Relacional (MySQL Workbench)
### Mapeando entidades de forma isolada
dentista(<ins>id</ins>, nome, cpf, data_nasc, sexo, telefone, uf_cro, num_cro, especializacao)

consulta(<ins>id</ins>, descricao, preco, data)

paciente(<ins>id</ins>, nome, cpf, data_nasc, sexo, telefone)

endereço(<ins>id</ins>, tipo, logradouro, numero, complemento, bairro, cidade, uf, cep)

anamnese(<ins>id</ins>, pergunta_1, pergunta_2, pergunta_3, pergunta_4, pergunta_5, pergunta_6, pergunta_7, pergunta_8, pergunta_9, pergunta_10, pergunta_11, pergunta_12, pergunta_13, pergunta_14, pergunta_15, pergunta_16, pergunta_17, pergunta_18, pergunta_19, pergunta_20)

odontograma(<ins>id</ins>, dente_1, dente_2, dente_3, dente_4, dente_5, dente_6, dente_7, dente_8, dente_9, dente_10, dente_11, dente_12, dente_13, dente_14, dente_15, dente_16, dente_17, dente_18, dente_19, dente_20, dente_21, dente_22, dente_23, dente_24, dente_25, dente_26, dente_27, dente_28, dente_29, dente_30, dente_31, dente_32)

plano_de_tratamento(<ins>id</ins>, descricao)

<br>

### Modelo Relacional
![Modelo Relacional](Modelo%20Relacional.png)