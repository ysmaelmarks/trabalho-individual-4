CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `contato` int,
  `nascimento` int,
  `turma_id` int
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `serie` varchar(255),
  `disciplina` varchar(255),
  `professor_id` varchar(255),
  `alunos_id` varchar(255)
);

CREATE TABLE `cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `coordenador_id` varchar(255),
  `professores_id` varchar(255),
  `turma_id` int
);

CREATE TABLE `coordenadores` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `contato` varchar(255)
);

CREATE TABLE `professores` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `contato` varchar(255)
);

CREATE TABLE `alunos_turmas` (
  `alunos_id` int,
  `turmas_alunos_id` varchar,
  PRIMARY KEY (`alunos_id`, `turmas_alunos_id`)
);

ALTER TABLE `alunos_turmas` ADD FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`);

ALTER TABLE `alunos_turmas` ADD FOREIGN KEY (`turmas_alunos_id`) REFERENCES `turmas` (`alunos_id`);


ALTER TABLE `turmas` ADD FOREIGN KEY (`id`) REFERENCES `cursos` (`turma_id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id`) REFERENCES `alunos` (`turma_id`);

ALTER TABLE `professores` ADD FOREIGN KEY (`id`) REFERENCES `cursos` (`professores_id`);

ALTER TABLE `cursos` ADD FOREIGN KEY (`coordenador_id`) REFERENCES `coordenadores` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id`);
