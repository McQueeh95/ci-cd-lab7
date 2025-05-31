FROM python:3.10-slim

# Створюємо робочий каталог
WORKDIR /lab7project

# Копіюємо requirements.txt окремо (краще для кешу)
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо решту коду
COPY . .

# Команда за замовчуванням
CMD ["python", "main.py"]