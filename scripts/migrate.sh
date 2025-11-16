#!/usr/bin/env bash
set -e

echo "Running Prisma migrations against DATABASE_URL:"
echo "$DATABASE_URL"

npx prisma migrate dev --name manual-trigger
