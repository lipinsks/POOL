# Używamy lekkiego i bezpiecznego oficjalnego obrazu Nginx Alpine
FROM nginx:alpine

# Kopiujemy nasz plik HTML do katalogu serwera Nginx
COPY index.html /usr/share/nginx/html/index.html

# Otwieramy port 5012, na którym Nginx nasłuchuje
EXPOSE 5012

# Uruchomienie Nginxa na pierwszym planie
CMD ["nginx", "-g", "daemon off;"]
