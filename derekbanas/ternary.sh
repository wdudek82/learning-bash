#!/usr/bin/env bash

can_vote=0
age=18

((age >= 18 ? (can_vote=1) : (can_vote=0)))

echo "Can Vote: $can_vote"
