-- CreateTable
CREATE TABLE "Cadastro" (
    "codigo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "categoria" TEXT NOT NULL,
    "provedor" TEXT NOT NULL,
    "abstecedor" TEXT NOT NULL,
    "fornecedor" TEXT NOT NULL,
    "comprador" TEXT NOT NULL,

    CONSTRAINT "Cadastro_pkey" PRIMARY KEY ("codigo")
);

-- CreateTable
CREATE TABLE "Saldo" (
    "codigo" TEXT NOT NULL,
    "filial" TEXT NOT NULL,
    "estoque_livre" INTEGER NOT NULL,
    "bloqueio" INTEGER NOT NULL,
    "reserva" INTEGER NOT NULL,
    "em_transito" INTEGER NOT NULL,
    "PO" INTEGER NOT NULL,
    "codigoId" TEXT NOT NULL,

    CONSTRAINT "Saldo_pkey" PRIMARY KEY ("codigo")
);

-- CreateTable
CREATE TABLE "Previsao" (
    "codigo" TEXT NOT NULL,
    "filial" TEXT NOT NULL,
    "emissao" TIMESTAMP(3) NOT NULL,
    "previsao" TIMESTAMP(3) NOT NULL,
    "pedido" TEXT NOT NULL,
    "codigoId" TEXT NOT NULL,

    CONSTRAINT "Previsao_pkey" PRIMARY KEY ("codigo")
);

-- AddForeignKey
ALTER TABLE "Saldo" ADD CONSTRAINT "Saldo_codigoId_fkey" FOREIGN KEY ("codigoId") REFERENCES "Cadastro"("codigo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Previsao" ADD CONSTRAINT "Previsao_codigoId_fkey" FOREIGN KEY ("codigoId") REFERENCES "Cadastro"("codigo") ON DELETE RESTRICT ON UPDATE CASCADE;
