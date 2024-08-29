#!/bin/bash

cd ..

git clone https://github.com/Junove/TalentManagementBackend.git

cd TalentManagementBackend/

gradle -stop

gradle wrapper

gradle build

./gradlew bootRun &

cd ..

sleep 45

git clone https://github.com/Junove/TalentManagementFrontend.git

cd TalentManagementFrontend/

npm install --force

npm run start
