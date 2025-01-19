#!/bin/bash

source ./src/build_script.sh

build_script "src/configuration_interface.sh" > happy_new_year.sh
chmod +x happy_new_year.sh
