# DockMon Agent for Home Assistant OS
Copy this complete folder to `\\[your_homeassistant_server]\addons\dockmon-agent`, reload the local app store, reinstall/update, configure a fresh registration token, disable Protection mode, and start.

# Configuration
Set `dockmon_url`, a fresh `registration_token`, `timezone`, and `insecure_skip_verify`. Disable Protection mode, because Docker API access and host PID access are required. Home Assistant exposes the Docker API read-only, so monitoring should work but destructive or modifying DockMon operations may be rejected.

<img width="2302" height="1155" alt="image" src="https://github.com/user-attachments/assets/3513af0c-b94a-43e5-8ede-c9ff1f5fc382" />

