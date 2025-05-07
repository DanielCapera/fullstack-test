A continuacion se muestra el paso a paso para correr la aplicacion:

## 📦 Requirimientos

- [Docker](https://www.docker.com/products/docker-desktop)
- [Git](https://git-scm.com/)

### 1. Clonar el repositorio

```bash
git clone git@github.com:DanielCapera/fullstack-test.git
cd fullstack-testab
```
### 2. Construir contenedores de docker

```bash
docker-compose build
```

### 3. Crear la base de datos

```bash
docker-compose run backend rails db:create db:migrate
```

### 4. Iniciar aplicacion

```bash
docker-compose up
```
### 5. Si la base de datos esta vacía, corre el siguiente seed para llenarla con algo de información.

```bash
docker-compose run backend rails db:seed
```
