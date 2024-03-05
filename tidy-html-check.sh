#!/bin/bash

EXIT_CODE=0

# Check all HTML files in the docs/ directory, except for the old site files in
# docs/legacy.  These are known to be trash.
for i in `find docs -name "*.html" -not -path "docs/legacy/*"`; do
  RESULT=`tidy -errors -quiet $i 2>&1`

  if [[ $RESULT ]]; then
    echo -e $i
    tidy -errors -quiet $i
    EXIT_CODE=1
  fi
done

# Do the same with XML files
for i in `find docs -name "*.xml" -not -path "docs/legacy/*"`; do
  RESULT=`tidy -xml -errors -quiet $i 2>&1`

  if [[ $RESULT ]]; then
    echo -e $i
    tidy -xml -errors -quiet $i
    EXIT_CODE=1
  fi
done

exit $EXIT_CODE
