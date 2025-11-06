#!/bin/bash
set -e
echo "🚀 Applying Fedora 2028 tuning..."
sudo cp configs/*.conf /etc/sysctl.d/ 2>/dev/null
sudo sysctl --system
echo "✅ Done. Check: sysctl vm.swappiness net.core.default_qdisc"
