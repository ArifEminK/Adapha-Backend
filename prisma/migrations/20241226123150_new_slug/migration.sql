/*
  Warnings:

  - A unique constraint covering the columns `[slug]` on the table `NewTranslation` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `slug` to the `NewTranslation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "NewTranslation" ADD COLUMN     "slug" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "NewTranslation_slug_key" ON "NewTranslation"("slug");
