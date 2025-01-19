#!/bin/bash

source src/build_script.sh

build_script "playground/01-works-on-single-file/fake.sh" | bash
chmod +x happy_new_year.sh
