run() {
    cmd="$1"
    content="$(eval "$cmd")"
    psql <<< "INSERT INTO acpi_log (host, cmd, content) VALUES ('$HOST', '$cmd', '$content')"
}

run 'sensors -j'
