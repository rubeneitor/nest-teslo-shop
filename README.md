<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# Teslo API

## Requisitos

- Node.js 22 o superior
- Docker Desktop o Docker Engine
- npm 10 o superior

## 1. Instalar dependencias

Desde la carpeta del backend:

```bash
npm install
```

## 2. Crear el archivo de entorno

Si no existe, copia `.env.template` a `.env` y ajusta los valores si lo necesitas.

Variables usadas por la API:

- `PORT`
- `HOST_API`
- `STAGE`
- `DB_HOST`
- `DB_PORT`
- `DB_NAME`
- `DB_USERNAME`
- `DB_PASSWORD`
- `JWT_SECRET`

## 3. Levantar la base de datos

Arranca PostgreSQL con Docker:

```bash
docker compose up -d
```

Esto levanta la base de datos en `localhost:5433`.

## 4. Ejecutar el seed

Con el backend arrancado en modo desarrollo, entra en:

```bash
http://localhost:3000/api/seed
```

Ese endpoint carga datos iniciales para poder probar la app.

## 5. Levantar la API

Para desarrollo:

```bash
npm run start:dev
```

La API queda disponible en:

```bash
http://localhost:3000/api
```

## 6. Levantar el frontend

En otra terminal, abre el proyecto `09-teslo-shop` y ejecuta:

```bash
npm install
npm start
```

El frontend se abre en:

```bash
http://localhost:4200/
```

## Orden recomendado para mostrar el proyecto en local

1. Levantar la base de datos con Docker.
2. Arrancar el backend.
3. Ejecutar el seed.
4. Arrancar el frontend.
5. Abrir `http://localhost:4200`.


