#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
PRIVATE_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)

cat <<EOF > /var/www/html/index.html
<html>
<body>
<h1>Backend Server</h1>
<p>Instance ID: $INSTANCE_ID</p>
<p>Private IP: $PRIVATE_IP</p>
<p>Public IP: $PUBLIC_IP</p>
</body>
</html>
EOF

