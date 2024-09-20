FROM ruby:2.6-alpine
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY test_main.py .
COPY . /app
WORKDIR /app
CMD ["ruby", "app.rb"]
