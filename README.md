# React & Apollo Tutorial

This is the sample project that belongs to the [React & Apollo Tutorial](https://www.howtographql.com/react-apollo/0-introduction/) on How to GraphQL.   

Forked to use postgres DB instead of sqlite.   

## How to use

### 1. Create new database and user in postgres   

```sh
# CREATE DATABASE <database_name>;
# CREATE USER <test_user> WITH PASSWORD <password>;
# GRANT ALL PRIVILEGES ON DATABASE <database_name> TO <test_user>;


### 2. Create a new environment variable for the postgres connection string

```sh
DATABASE_URL_NEWS=postgresql://<test_user>:<password>@localhost:5432/<database_name>


### 3. Clone repository

```sh
git clone https://github.com/richlee33/react-apollo.git
```


### 4. Start the backend server

Go to the `server` folder, install dependencies, push the database schema and start the server. 

```sh
cd react-apollo/server
yarn install
npx prisma db push
yarn dev
```

> **Note**: If you want to interact with the GraphQL API of the server inside a [GraphQL Playground](https://github.com/prisma/graphql-playground), you can navigate to [http://localhost:4000](http://localhost:4000).


### 5. Run the app

Now that the server is running, you can start the React app as well. The commands need to be run in a new terminal tab/window inside the root directory `react-apollo` (because the current tab is blocked by the process running the server):

```sh
yarn install
yarn start
```

You can now open your browser and use the app on [http://localhost:3000](http://localhost:3000).
