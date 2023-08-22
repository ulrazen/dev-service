# Table of Contents

1. [Microservices Project](#microservices-project)
2. [Prerequisites](#prerequisites)
3. [Setup](#setup)
    - [Clone the Repository](#clone-the-repository)
    - [Initialize the Submodules](#initialize-the-submodules)
    - [Run Docker Compose](#run-docker-compose)
    - [Update services](#update-services)
4. [Accessing Services](#accessing-services)
5. [Shutting Down](#shutting-down)
6. [Access dynamo local data](#access-dynamo-local-data)


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

3. **Build and run Docker Compose:**
    ```bash
    docker-compose up --build
    # or
    docker-compose build --no-cache 
    ```

4. **Update services:**
    ```bash
    git submodule foreach git pull origin main
    ```

## Accessing Services

* **Item Service**: [localhost:3001](http://localhost:3001)
* **User Service**: [localhost:3002](http://localhost:3002)

## Shutting Down

To stop the services and containers:
    ```bash
    docker-compose down
    ```

## Access Dynamo local data

1. Install AWS CLI

2. Configure the enviroment keys used in the docker-compose

3. Use the following command to list tables:
    ```bash
    aws dynamodb list-tables --endpoint-url http://127.0.0.1:[DYNAMO-PORT]
    ```

4. Use the following command to see a table data:
    ```bash
    aws dynamodb scan --table-name [DYNAMO-TABLE] --endpoint-url http://localhost:[DYNAMO-PORT]
    ```
