-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL DEFAULT '',
    "age" INTEGER,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);
