#!/usr/bin/env bash

guess_number() {
    local total_files=$1
    local guess=0

    while [[ $guess -ne $total_files ]]; do
        echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
        read guess

        if ! [[ $guess =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        if [[ $guess -lt $total_files ]]; then
            echo "Trop bas. Essayez encore."
        elif [[ $guess -gt $total_files ]]; then
            echo "Trop haut. Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné le nombre correct de fichiers."
        fi
    done
}

total_files=$(find . -maxdepth 1 -type f | wc -l)

guess_number $total_files
