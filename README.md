# Table of Contents

1. [Microservices Project](#microservices-project)
2. [Prerequisites](#prerequisites)
3. [Setup](#setup)
    - [Clone the Repository](#clone-the-repository)
    - [Initialize the Submodules](#initialize-the-submodules)
    - [Run Docker Compose](#run-docker-compose)
4. [Accessing Services](#accessing-services)
5. [Shutting Down](#shutting-down)


# Microservices Project

A dev service for local development consisting of multiple microservices with Docker Compose.

## Prerequisites

* Docker
* Docker Compose
* Git

## Setup

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/your-username/dev-repo.git
    cd dev-repo
    ```

2. **Initialize the Submodules:**
    ```bash
    git submodule update --init --recursive
    ```

3. **Run Docker Compose:**
    ```bash
    docker-compose up --build
    ```

## Accessing Services

* **Item Service**: [localhost:3001](http://localhost:3001)
* **User Service**: [localhost:3002](http://localhost:3002)

## Shutting Down

To stop the services and containers:
```bash
docker-compose down
```
