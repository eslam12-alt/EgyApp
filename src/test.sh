#!/bin/bash

# المسار بتاع الملف
# src/test.sh

EXPECTED="Hello, Test!"

# تشغيل ملف الـ app.js وتخزين النتيجة في متغير
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then

    echo "✅ Test passed!"
    exit 0

else

    echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1

fi