#!/bin/sh

yarn build
yarn test-serve &
sleep 2
blc http://localhost:3000/handbook/site -ro
killall node
