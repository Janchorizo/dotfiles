pip3_with_requirements () {
    bash -c "echo \"$1\" >> ./requirements.txt && pip3 install -r requirements.txt"
}