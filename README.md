# vpncd

Painless `vpnc` that...

* doesn't mess with your network stack
* works on macOS with colima
* exposes the target network via SOCKS5 for easy browser-side routing

create `.env`

```env
VPNC_IPSEC_GATEWAY=""
VPNC_IPSEC_ID=""
VPNC_IPSEC_SECRET=""
VPNC_USERNAME=""
VPNC_PASSWORD=""
```

```shell
docker build -t local/vpncd .
docker run -d --env-file .env --privileged -p 1080:1080 local/vpncd:latest
```

You can now use FoxyProxy ([Chrome](https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/)) or your other favorite browser addon to route some hosts/patterns to the socks proxy at `localhost:1080`.