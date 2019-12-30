run() {
    cmd="$1"
    content="$(eval "$cmd")"
    psql <<< "INSERT INTO acpi_log (host, cmd, content) VALUES ('$HOST', '$cmd', '$content')"
}

while true; do
    run 'sensors -j'
    run 'cat /proc/loadavg'
    run 'mpstat -A'
    sleep 60
done
