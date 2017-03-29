#!/bin/bash

addition()
{
    RESULT=`expr $1 + $2`
    echo "Result of addition: $RESULT"
}

addition $1 $2
