#!/bin/bash
export PORT="${PORT:-2053}"
echo "🚀 Starting X-UI on port ${PORT}..."

mkdir -p /etc/x-ui

# تنظیم فایل کانفیگ پیش‌فرض پنل
cat > /etc/x-ui/config.json << EOF
{
  "webPort": ${PORT},
  "webBasePath": "/",
  "webListen": "0.0.0.0",
  "logLevel": "info"
}
EOF

# اجرای مستقیم باینری x-ui در حالت لوپ برای زنده نگه داشتن کانتینر
cd /usr/local/x-ui
exec ./x-ui
