# Use the official PostgreSQL image from Docker Hub
FROM postgres:latest

# Set environment variables for PostgreSQL user, password, and database name
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB database1

# Copy the SQL dump file into the Docker container
COPY phase3.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port (optional)
EXPOSE 5432
