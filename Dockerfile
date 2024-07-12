# Use an official Node.js runtime as the base image
FROM node:18-alpine

ARG network_name
ENV DOCKER_BUILD_NETWORK=${idms-network}
# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies

# Copy the rest of the application code
COPY . .

RUN npm install

# Build the application (if applicable)
# RUN npm run build

# Generate Prisma client
RUN npx prisma migrate deploy
RUN npx prisma generate

# Expose the application port
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
