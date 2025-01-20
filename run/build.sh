#!/bin/bash

source run/compose.sh

compose "src/configuration.sh" > happy_new_year.sh
chmod +x happy_new_year.sh
