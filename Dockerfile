# Use official Node image
FROM node:18

# Create working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose your app port (change if different)
EXPOSE 5000

# Start server
CMD ["npm", "start"]