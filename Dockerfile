# Używamy lekkiego i bezpiecznego oficjalnego obrazu Nginx Alpine
FROM nginx:alpine

# Kopiujemy nasz plik HTML do katalogu serwera Nginx
COPY billiard-position-trainer.html /usr/share/nginx/html/index.html

# Otwieramy port 80, na którym Nginx nasłuchuje
EXPOSE 80

# Uruchomienie Nginxa na pierwszym planie
CMD ["nginx", "-g", "daemon off;"]
