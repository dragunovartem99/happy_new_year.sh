#!/bin/bash

source functions/compose.sh

SOURCES=(
	"pieces/default_config.sh"
	"functions/update_copyright.sh"
	"functions/print_ascii_art.sh"
	"pieces/main_program.sh"
	"pieces/success_message.sh"
)

compose ${SOURCES[@]} > happy_new_year.sh
