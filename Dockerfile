# Use Node.js for building
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Use Node.js for running
FROM node:18-alpine AS runner
WORKDIR /app

# Copiamos solo lo necesario del builder
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

EXPOSE 80
ENV PORT=80
ENV HOSTNAME="0.0.0.0"

CMD ["npm", "start"]
