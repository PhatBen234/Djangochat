# Sử dụng một base image có Python đã được cài đặt
FROM python:3.9

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy tệp requirements.txt vào thư mục /app
COPY requirements.txt .

# Cài đặt các dependencies từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy tất cả các tệp trong thư mục dự án của bạn vào thư mục /app trong container
COPY . .

# Mở cổng mà ứng dụng của bạn sử dụng (nếu cần thiết)
# EXPOSE <port_number>

# Khởi chạy ứng dụng hoặc các lệnh khởi động cần thiết
# CMD ["python", "app.py"]
