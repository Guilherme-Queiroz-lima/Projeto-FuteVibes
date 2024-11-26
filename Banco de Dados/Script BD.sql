show databases;
use futevibes;
create table usuario(
id int auto_increment primary key,
nome varchar(45),
email varchar(45),
senha varchar(45));
create table respotas(
idRespostas int auto_increment,
NumeroRespostasCertas int,
NumeroRespostasErradas int,
fkUsuario int,
constraint fkUsarioRespostas foreign key(fkUsuario) references usuario(id),
primary key(idRespostas, fkUsuario) );
