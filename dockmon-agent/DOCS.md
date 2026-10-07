# Configuration
Set `dockmon_url`, a fresh `registration_token`, `timezone`, and `insecure_skip_verify`. Disable Protection mode, because Docker API access and host PID access are required. Home Assistant exposes the Docker API read-only, so monitoring should work but destructive or modifying DockMon operations may be rejected.
