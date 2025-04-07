FROM node:22-alpine

# ARG DATABASE_URL
# ENV DATABASE_URL=${DATABASE_URL}
ENV NODE_ENV=development  

RUN npm install -g pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install


COPY . .


RUN pnpm  prisma generate

RUN pnpm build

EXPOSE 3000

CMD ["pnpm", "run", "dev:docker"]
