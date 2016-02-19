#!/bin/bash

#------------------------------------------------------------------------------
# compose_json
#------------------------------------------------------------------------------

function compose_json {

  COUNT=$(ls marathon/*.json | wc -l)

  # JSON header:
  echo '{'
  echo '  "id": "/sentry",'
  echo '    "apps": ['

  # JSON body:
  for i in marathon/*.json; do

    cat ${i}

    [ ${COUNT} -gt 1 ] && {
      echo -n ','
      COUNT=$((COUNT - 1))
    }

  done

  # JSON footer:
  echo '  ]'
  echo '}'

}
