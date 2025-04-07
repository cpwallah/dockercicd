FROM node:20-slim

RUN npm install -g pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY . .

ENV DATABASE_URL="postgresql://postgres:mysecretpassword@host.docker.internal:5432/mydb"

# RUN pnpm prisma generate

EXPOSE 3000

CMD ["pnpm", "run","dev:docker"]
