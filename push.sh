run() {
    cmd="$1"
    content="$(eval "$cmd")"
    psql <<< "INSERT INTO acpi_log (host, cmd, content) VALUES ('$HOST', '$cmd', '$content')"
}

while true; do
    run 'sensors -j'
    sleeo 60
done
