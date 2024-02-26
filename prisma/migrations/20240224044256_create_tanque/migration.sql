-- CreateTable
CREATE TABLE "Tanque" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "nome_tanque" VARCHAR,
    "largura" DOUBLE PRECISION NOT NULL,
    "profundidade" DOUBLE PRECISION NOT NULL,
    "comprimento" DOUBLE PRECISION NOT NULL,
    "quant_peixe" VARCHAR,
    "tipo_peixe" TEXT NOT NULL,
    "created_At" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_At" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Tanque_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Tanque" ADD CONSTRAINT "Tanque_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
