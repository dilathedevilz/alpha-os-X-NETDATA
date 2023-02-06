fetch("http://192.168.1.1:19999/api/v1/info")
                .then(response => response.json())
                .then(data => {
                    console.log (data.os_version)
                    document.querySelector("#hostname").innerText = data.mirrored_hosts
                    document.querySelector("#value1").innerText = data.host_labels._kernel_version
                    document.querySelector("#coreproci").innerText = data.cores_total
                    document.querySelector("#clockproci").innerText = data.cpu_freq
                    document.querySelector("#ram").innerText = (data.ram_total/1000*1)
                    document.querySelector("#osversi").innerText = data.os_version
                    document.querySelector("#arsitek").innerText = data.architecture
                })