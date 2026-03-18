# Docker CI Pipeline Project

![CI](https://github.com/VMBacca/docker-app/actions/workflows/docker.yml/badge.svg)

This project demonstrates the implementation of a **CI (Continuous Integration) pipeline** using **GitHub Actions** to automatically build and push a Docker image to Docker Hub.

---

## Purpose

Automate the process of:

- Building the application
- Creating a Docker image
- Publishing the image to Docker Hub

Every time a change is pushed to the `main` branch.

---

## Tech Stack

- Node.js
- Docker
- GitHub Actions (CI)
- Docker Hub

---

## How it works

1. A change is made in the code
2. A `git push` is executed
3. GitHub Actions is triggered automatically
4. The pipeline performs:
   - Application build
   - Docker image creation
   - Push to Docker Hub

---

## Docker Image

The Docker image is available on Docker Hub:

vinimb/app:latest

### Pull the image:
```bash
docker pull vinimb/app:latest
````

### Run the container:
````
docker run -p 3000:3000 vinimb/app:latest
````

---

## Project Structure:
````
.
├── src/
├── spec/
├── Dockerfile
└── .github/
    └── workflows/
        └── docker.yml
````

---

## Security:
Docker Hub credentials are securely stored using GitHub Secrets, preventing sensitive data exposure in the codebase.

---

## CI Pipeline:
 - The pipeline is defined in:
   ````
    .github/workflows/docker.yml
   ````
It runs automatically on every push to the main branch.

This project uses GitHub Actions to:

- Build the Docker image
- Push the image to Docker Hub

The pipeline was iteratively refined based on troubleshooting and optimization steps, ensuring a stable and reproducible build process aligned with real-world CI/CD practices.

---

## Future Improvements:
  1. Image versioning (v1, v2, etc.)
  2. Run automated tests before build
  3.Continuous Deployment (CD)
  4.Cloud deployment integration

---

## Author:
Vinícius Marcondes Bacca
