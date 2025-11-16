/*
  Warnings:

  - You are about to drop the column `role` on the `InviteToken` table. All the data in the column will be lost.
  - You are about to drop the column `usedAt` on the `InviteToken` table. All the data in the column will be lost.
  - Made the column `clientPortalId` on table `InviteToken` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "InviteToken" DROP CONSTRAINT "InviteToken_clientPortalId_fkey";

-- DropIndex
DROP INDEX "InviteToken_email_idx";

-- AlterTable
ALTER TABLE "InviteToken" DROP COLUMN "role",
DROP COLUMN "usedAt",
ALTER COLUMN "clientPortalId" SET NOT NULL;

-- AlterTable
ALTER TABLE "ResellerProfile" ADD COLUMN     "brandColor" TEXT,
ADD COLUMN     "faviconUrl" TEXT,
ADD COLUMN     "logoUrl" TEXT;

-- AddForeignKey
ALTER TABLE "InviteToken" ADD CONSTRAINT "InviteToken_clientPortalId_fkey" FOREIGN KEY ("clientPortalId") REFERENCES "ClientPortal"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
