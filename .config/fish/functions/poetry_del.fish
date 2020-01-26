function poetry_del
    poetry remove $argv
    poetry export -f requirements.txt --dev >requirements.txt
end