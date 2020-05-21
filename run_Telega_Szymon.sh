#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Należy podać jedną z opcji [clone, run, clean lub update]"
    exit 1

elif [ $1 == "clone" ]; then

    git clone https://github.com/stelega/PN_Project
    exit 0

elif [ $1 == "run" ]; then
    chmod 755 ./PN_Project/run_Telega_Szymon.sh
    chmod 755 ./PN_Project/ex1/run.sh
    chmod 755 ./PN_Project/ex2/run.sh
    chmod 755 ./PN_Project/ex3/run.sh
    chmod 755 ./PN_Project/examples/run_example3.sh
    chmod 755 ./PN_Project/examples/run_example4.sh
    echo "Do mojego projektu nie ma środowiska, zadania do wykonania znajdują się w folderach "
    echo "ex1, ex2, oraz ex3. Pisać je można w edytorach tekstowych (vim, nano), natomiast"
    echo "kompilację i uruchamianie obsługują skrypty run.sh znajdujących się w folderach."
    echo "Skrypty wykorzystuje kompilatory gcc i nasm oraz emulator qemu. "
    echo "Więcej informacji znaleźć można w README oraz w pliku Informacje.pdf w katalogu docs."
    exit 0

elif [ $1 == "clean" ]; then
    rm -rf PN_Project
    exit 0

elif [ $1 == "update" ]; then
    git pull


else   
    echo "Opcja niedostępna. Należy podać jedną z opcji [clone, run, clean lub update]"

fi
