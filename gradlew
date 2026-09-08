#!/bin/sh

APP_HOME=$(cd "$(dirname "$0")" && pwd)

WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ -f "$WRAPPER_JAR" ]; then
  exec java -jar "$WRAPPER_JAR" "$@"
else
  echo "Gradle wrapper jar not found. Using installed Gradle on CI runner."
  exec gradle "$@"
fi
