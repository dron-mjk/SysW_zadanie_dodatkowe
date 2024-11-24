# Zadanie dodatkowe lab 4

## Polecenie użyte do budowy obrazu
```
docker build --build-arg VERSION=1 -f Dockerfile -t local/zadaniedod:1 .
```
![image](https://github.com/user-attachments/assets/9775e468-23ea-4ed8-8184-9e72ca2c6cd2)

## Polecenie do uruchomienia kontenera
```
docker run -itd -p 80:80 --name sysw_zadanie_dodatkowe local/zadaniedod:1
```
## Polecenie do uruchomienia serwera
Serwer uruchamia się automatycznie więc nie jest ono potrzebne 

## Potwierdzenie działania i zdrowia kontenera
![image](https://github.com/user-attachments/assets/675eea81-c396-4749-9bd0-34a804c4a495)


## Zrzut ekranu z przeglądarki
![image](https://github.com/user-attachments/assets/5d64f7cc-a59b-4c33-9ff6-00125346844f)


