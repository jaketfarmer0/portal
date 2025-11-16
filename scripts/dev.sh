#!/usr/bin/env bash
set -e

echo "Installing dependencies..."
npm install

echo "Running Prisma migrations..."
npx prisma migrate dev --name init || true
npx prisma migrate dev --name add-admin-role-and-branding || true

echo "Starting dev server on http://localhost:3000 ..."
npm run dev
