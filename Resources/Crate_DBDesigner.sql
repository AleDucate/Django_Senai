
 CREATE TABLE "public.Funcionário" (
	"Id" integer NOT NULL,
	"Nome" VARCHAR(255) NOT NULL,
	"Idade" integer NOT NULL,
	"Salário" DECIMAL NOT NULL,
	"id_Cargo" integer NOT NULL,
	CONSTRAINT "Funcionário_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cargo" (
	"id" integer NOT NULL,
	"Cargo" varchar(255) NOT NULL,
	"Valor_extra" DECIMAL NOT NULL,
	"Id_departamento" integer NOT NULL,
	CONSTRAINT "Cargo_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Departamento" (
	"Id" integer NOT NULL,
	"Nome" varchar(255) NOT NULL,
	CONSTRAINT "Departamento_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Ponto" (
	"Id" integer NOT NULL,
	"minutos de atraso" DATETIME NOT NULL,
	"Horário_entrada" DATETIME NOT NULL,
	"Horário_saída" integer NOT NULL,
	"Id_Funcionário" integer NOT NULL,
	CONSTRAINT "Ponto_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Folha_pagamento" (
	"Id" integer NOT NULL,
	"Data" DATE NOT NULL,
	"Hora_extra" DECIMAL NOT NULL,
	"Valor" DECIMAL NOT NULL,
	"Id_Funcionário" integer NOT NULL,
	CONSTRAINT "Folha_pagamento_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Departamento_empresa" (
	"Id_departamento" integer NOT NULL,
	"Id_empresa" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Empresa" (
	"Id" integer NOT NULL,
	"nome" varchar(255) NOT NULL,
	CONSTRAINT "Empresa_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Item_nota" (
	"Id" integer NOT NULL,
	"Produto" varchar(255) NOT NULL,
	"Valor" DECIMAL NOT NULL,
	"Quantidade" DECIMAL NOT NULL,
	"Id_nota" integer NOT NULL,
	CONSTRAINT "Item_nota_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Nota_fiscal" (
	"id" integer NOT NULL,
	"data" DATE NOT NULL,
	"id_empresa" integer NOT NULL,
	CONSTRAINT "Nota_fiscal_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Funcionário" ADD CONSTRAINT "Funcionário_fk0" FOREIGN KEY ("Salário") REFERENCES "Nível hierárquico Ideal"("Junior");
ALTER TABLE "Funcionário" ADD CONSTRAINT "Funcionário_fk1" FOREIGN KEY ("id_Cargo") REFERENCES "Cargo"("id");

ALTER TABLE "Cargo" ADD CONSTRAINT "Cargo_fk0" FOREIGN KEY ("Id_departamento") REFERENCES "Departamento"("Id");


ALTER TABLE "Ponto" ADD CONSTRAINT "Ponto_fk0" FOREIGN KEY ("Id_Funcionário") REFERENCES "Funcionário"("Id");

ALTER TABLE "Folha_pagamento" ADD CONSTRAINT "Folha_pagamento_fk0" FOREIGN KEY ("Id_Funcionário") REFERENCES "Funcionário"("Id");

ALTER TABLE "Departamento_empresa" ADD CONSTRAINT "Departamento_empresa_fk0" FOREIGN KEY ("Id_departamento") REFERENCES "Departamento"("Id");
ALTER TABLE "Departamento_empresa" ADD CONSTRAINT "Departamento_empresa_fk1" FOREIGN KEY ("Id_empresa") REFERENCES "Empresa"("Id");


ALTER TABLE "Item_nota" ADD CONSTRAINT "Item_nota_fk0" FOREIGN KEY ("Id_nota") REFERENCES "Nota_fiscal"("id");

ALTER TABLE "Nota_fiscal" ADD CONSTRAINT "Nota_fiscal_fk0" FOREIGN KEY ("id_empresa") REFERENCES "Empresa"("Id");




