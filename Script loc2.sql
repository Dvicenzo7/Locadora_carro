CREATE TABLE reserva (
    id_reserva int not null auto_increment primary key,
    id_cliente int,
    id_carro int,
    data_reserva date,
    data_prevista date,
    hora_prevista time
);

CREATE TABLE retirada (
    id_retirada int not null auto_increment primary key,
    id_cliente int,
    id_carro int,
    id_reserva int,
    data_retirada date,
    hora_retirada time,
    km_carro int
);

ALTER TABLE retirada 
ADD CONSTRAINT fk_reserva 
FOREIGN KEY (id_reserva) 
REFERENCES reserva(id_reserva);

CREATE TABLE devolucao (
    id_devolucao int not null auto_increment primary key,
    id_retirada int,
    id_carro int,
    data_devolucao date,
    hora_devolucao time,
    km_carro int,
    id_pgmt int,
    valor_pago double
);

ALTER TABLE devolucao
ADD CONSTRAINT fk_retirada
FOREIGN KEY (id_retirada)
REFERENCES retirada(id_retirada);



