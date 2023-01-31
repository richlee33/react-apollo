#!/bin/bash
  
# turn on bash's job control
set -m
  
# Start backend server process and put it in the background
cd server
npx prisma db push
yarn dev &


# Start the React app
cd ..
yarn start
 
