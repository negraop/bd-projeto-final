INSERT INTO tb_dentista VALUES 
(null, 'Pedro', '00000000000', '1976-03-15', 'Masculino', '11900001111', 'SP', 52789, 'Dentística'),
(null, 'Laura', '11111111111', '1995-06-04', 'Feminino', '11987870987', 'SP', 132083, 'Implantodontista'),
(null, 'João', '22222222222', '1990-09-22', 'Masculino', '11945660123', 'MG', 98760, 'Ortodontista'),
(null, 'Maria', '33333333333', '1997-12-25', 'Feminino', '11965778995', 'SP', 156789, '');

INSERT INTO tb_paciente VALUES
(null, 'Frederico', '55555555555', '2005-08-10', 'Masculino', '11940028922'),
(null, 'Antonia', '66666666666', '1957-11-13', 'Feminino', '11900123487'),
(null, 'Roberta', '77777777777', '1984-03-19', 'Feminino', '990074622'),
(null, 'Bug do Milenio', '88888888888', '2000-01-01', 'Outros', '995647389'),
(null, 'Antonieta', '99999999999', '1970-05-31', 'Feminino', '923412087');

INSERT INTO tb_consulta VALUES
(null, 'Restauração', 450.00, '2023-09-09 09:00', 1, 'PAGO', 2, 1),
(null, 'Limpeza', 350.00, '2023-09-09 10:30', 1, 'PAGO', 2, 2),
(null, 'Limpeza', 350.00, '2023-09-09 14:00', 0, 'NÃO COMPARECEU', 2, 3),
(null, 'Extração/Cirurgia', 1000.00, '2023-09-11 08:00', 1, 'PAGO', 2, 4),
(null, 'Restauração', 450.00, '2023-09-11 15:00', 1, 'PAGO', 2, 5),
(null, 'Limpeza', 350.00, '2023-09-16 09:00', 1, 'PAGO', 2, 1),
(null, 'Limpeza', 350.00, '2023-09-16 10:30', 1, 'PAGO', 2, 2),
(null, 'Restauração', 450.00, '2023-09-16 14:00', 1, 'PAGO', 2, 3)
(null, 'Limpeza', 350.00, '2023-10-02 14:00', 1, 'PAGO', 2, 4)

INSERT INTO tb_endereco VALUES
(null, 'Rua', 'das Paineiras', 265, '', 'Jardim', 'Santo André', 'SP', 09156098, 2, null),
(null, 'Av.', 'Americo', 1998, 'Ap. 23', 'Campestre', 'Santo André', 'SP', 09045090, 1, null),
(null, 'Rua', 'Maria', 2070, 'Ap. 02', 'Santa Teresinha', 'Santo André', 'SP', 09056170, 3, null),
(null, 'Alameda', 'Santos', 457, '', 'Campos', 'São Caetano do Sul', 'SP', 09421828, 4, null),
(null, 'Rua', 'Figueiras', 368, 'Ap. 12', 'Jardim', 'Santo André', 'SP', 09152050, null, 1),
(null, 'Rua', 'Maranhão', 2151, 'Ap. 48', 'Boa Vista', 'São Caetano do Sul', 'SP', 09490090, null, 2),
(null, 'Alameda', 'Padre Vieira', 1234, 'Ap. 56', 'Pq. Capuava', 'Santo André', 'SP', 092180450, null, 3),
(null, 'Av.', 'Guarapiranga', 875, '', 'Vila Guedes', 'São Caetano do Sul', 'SP', 09190360, null, 4),
(null, 'Rua', 'Amazonas', 301, 'Ap. 04', 'Cidade bonita', 'São Bernardo do Campo', 'SP', 09760420, null, 5);

INSERT INTO tb_plano_tratamento VALUES
(null, 'Limpeza na primeira consulta. Restauração na segunda consulta.', 2, 1),
(null, 'Extração dos sizos inferiores na primeira consulta. Extração dos sizos superiores na segunda consulta.', 2, 2),
(null, 'Restauração na primeira consulta.', 2, 3),
(null, 'Somente Limpeza.', 2, 4),
(null, 'Limpeza na primera consulta. Restauração na segunda consulta.', 2, 5);

INSERT INTO tb_anamnese VALUES
(null, 2, 1, 'Não', 'Não', 'Nào', 'Não', 'Hígido', 'Restauração na face medial', 'Hígido', 'Hígido'),
(null, 2, 2, 'Não', 'Não', 'Nào', 'Não', 'Hígido', 'Hígido', 'Hígido', 'Hígido'),
(null, 2, 3, 'Sim, sensibilidade leve.', 'Não', 'Não', 'Não', 'Restauração na face distal', 'Hígido', 'Hígido', 'Hígido'),
(null, 2, 4, 'Não', 'Sim, asma.', 'Não', 'Não', 'Hígido', 'Hígido', 'Hígido', 'Extraído'),
(null, 2, 5, 'Não', 'Não', 'Sim, pressão alta', 'Não', 'Hígido', 'Canal', 'Hígido', 'Hígido');