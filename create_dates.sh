#!/bin/bash
for file in $(git ls-files $1)
do
    HASH=$(git rev-list HEAD "$file" | tail -n 1)
    DATE=$(git show -s --format="%ci" $HASH --)
    printf "%-75s %s\n" "$file|" "$DATE"
done
