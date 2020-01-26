function poetry_add
    poetry add $argv
    poetry export -f requirements.txt --dev >requirements.txt
end