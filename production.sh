#!/bin/bash

source generate_script.sh

generate_script "src/configuration_interface.sh" > happy_new_year.sh
chmod +x happy_new_year.sh
