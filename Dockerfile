# Step 1: Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Step 2: Copy your static website files to the Nginx html folder
# This assumes your HTML files are in the same folder as this Dockerfile
COPY . /usr/share/nginx/html

# Step 3: Expose port 80
EXPOSE 80

# Step 4: Start Nginx
CMD ["nginx", "-g", "daemon off;"]