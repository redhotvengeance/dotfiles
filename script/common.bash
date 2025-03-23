function log {
	if [[ $dry == "1" ]]; then
		echo "[DRY RUN]: $@"
	else
		echo "$@"
	fi
}
