-- Feito por Davi Leonardo(Solo)

USE petshop_db;

-- Inserindo dados na tabela de clientes (5 registros)
INSERT INTO clientes (nome, cpf, telefone, bairro) VALUES 
('Ana Souza', '123.456.789-01', '(14) 98888-1111', 'Centro'),
('Carlos Silva', '234.567.890-12', '(14) 97777-2222', 'Jardim América'),
('Mariana Oliveira', '345.678.901-23', '(14) 96666-3333', 'Vila Nova'),
('João Pedro Santos', '456.789.012-34', '(14) 95555-4444', 'Parque das Flores'),
('Beatriz Lima', '567.890.123-45', '(14) 94444-5555', 'Highland Park');


-- Inserindo dados na tabela de animais (5 registros vinculados aos tutores 1 a 5)
INSERT INTO animais (id_tutor, nome, especie, raca, data_nascimento, peso) VALUES 
(1, 'Mel', 'Cachorro', 'Golden Retriever', '2021-05-10', 28.50),
(2, 'Thor', 'Cachorro', 'Pitbull', '2020-03-15', 32.00),
(3, 'Nina', 'Gato', 'Siamês', '2022-01-20', 4.20),
(4, 'Bob', 'Cachorro', 'Poodle', '2019-11-05', 7.50),
(5, 'Luna', 'Gato', 'Persa', '2021-08-12', 3.80);


-- Inserindo dados na tabela de servicos (5 registros)
-- Nota: Mantido o nome da coluna 'vaninacao' conforme a sua criação da tabela.
INSERT INTO servicos (banho, tosa, consulta_veterinaria, vaninacao, descricao, preco) VALUES 
('Sim', 'Completa', 'Não', 'Não', 'Banho e Tosa Completa', 80.00),
('Sim', 'Higienica', 'Não', 'Não', 'Banho e Tosa Higiênica', 55.00),
('Não', 'Não', 'Sim', 'Não', 'Consulta Veterinária Geral', 120.00),
('Não', 'Não', 'Não', 'Sim', 'Aplicação de Vacina', 90.00),
('Sim', 'Completa', 'Sim', 'Sim', 'Pacote Completo: Banho, Tosa e Consulta', 200.00);


-- Inserindo dados na tabela de atendimentos (5 registros vinculando animais e serviços)
INSERT INTO atendimentos (id_animal, id_servico, data_atendimento, valor_final) VALUES 
(1, 1, '2026-05-10', 80.00),
(2, 2, '2026-05-11', 55.00),
(3, 3, '2026-05-12', 120.00),
(4, 4, '2026-05-13', 90.00),
(5, 5, '2026-05-14', 200.00);