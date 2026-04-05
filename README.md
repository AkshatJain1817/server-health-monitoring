# 🖥️ Server Monitoring System (Bash)

A lightweight Linux-based monitoring script that collects and logs key system metrics including CPU usage, memory usage, disk storage, active connections, and network performance (latency & packet loss).

---

## 🚀 Features

* 📊 CPU usage snapshot
* ⚙️ Per-process CPU usage
* 🧠 Memory usage per process
* 💾 Disk storage information
* 🌐 Active network connections
* 📡 Network latency & packet loss monitoring
* 📝 Automatic logging with timestamped output files

---

## 📁 Output

Each run of the script generates a log file:

```
output_YYYY-MM-DD_HH-MM-SS.txt
```

This file contains all collected system metrics for that execution.

---

## 🛠️ Requirements

* Linux environment (or WSL)
* Bash shell
* Standard Linux utilities:

  * `top`
  * `ps`
  * `df`
  * `ss` / `netstat`
  * `ping`
  * `awk`

---

## ▶️ Usage

1. Make the script executable:

```bash
chmod +x monitor.sh
```

2. Run the script:

```bash
./monitor.sh
```

3. View the generated log file:

```bash
cat output_*.txt
```

---

## 📊 Sample Output

```
=========CPU USAGE=========

top - 12:00:00 up 1 day...

=========LATENCY AND PACKET LOSS=========

Packet Loss:  0% packet loss
Avg Latency: 27.706 ms
```

---

## 🧠 How It Works

* Uses system commands like `top`, `ps`, and `df` to gather metrics
* Uses `ping` to measure:

  * Packet loss
  * Average latency
* Parses output using `awk` for clean reporting
* Logs everything using `tee` with timestamped filenames

---

## ⚠️ Notes

* Script uses `set -e`, so it will stop if a command fails
* Requires network access for latency checks (`8.8.8.8`)
* Output depends on system environment (WSL/Linux differences may exist)

---

## 🔮 Future Improvements

* Add threshold-based alerts (CPU, memory, latency)
* Convert output to JSON format
* Build a web dashboard for visualization
* Schedule execution using `cron`
* Add color-coded output for readability

---

## 📌 Author

Built as a learning project for:

* Linux scripting
* System monitoring
* Networking fundamentals

---

## ⭐ Why This Project Matters

This project demonstrates practical skills in:

* Bash scripting
* System diagnostics
* Log handling
* Network analysis

A solid foundation for DevOps, SRE, or backend system roles.

---

