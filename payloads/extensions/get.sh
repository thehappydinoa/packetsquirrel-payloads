#!/bin/bash

function GET() {
  case $1 in
    "INTERFACE")
      export INTERFACE=$(ip -o link show | awk '{print $2}')
      ;;
  esac
}

export -f GET
