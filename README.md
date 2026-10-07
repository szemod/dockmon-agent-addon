# DockMon Agent for Home Assistant OS
Copy this complete folder to `\\[your_homeassistant_server]\addons\dockmon-agent`, reload the local app store, reinstall/update, configure a fresh registration token, disable Protection mode, and start, OR simply add this repo to Home Assistant: 'https://github.com/szemod/dockmon-agent-addon'.
<img width="1555" height="1023" alt="image" src="https://github.com/user-attachments/assets/ca753cba-6b59-4378-ac2b-660366c10367" />
<img width="1322" height="862" alt="image" src="https://github.com/user-attachments/assets/7ae5519b-e57a-4d59-b6ae-7fa9929b08e6" />
<img width="1887" height="77" alt="image" src="https://github.com/user-attachments/assets/726b0952-5dfd-4f2a-a0ce-cc85e02ea9e9" />

# Configuration
Set `dockmon_url`, a fresh `registration_token`, `timezone`, and `insecure_skip_verify`. Disable Protection mode, because Docker API access and host PID access are required. Home Assistant exposes the Docker API read-only, so monitoring should work but destructive or modifying DockMon operations may be rejected.

<img width="2302" height="1155" alt="image" src="https://github.com/user-attachments/assets/3513af0c-b94a-43e5-8ede-c9ff1f5fc382" />

