### Hello, there :)

źródło zadań:
https://devopswithdocker.com/part-1/

Z racji że to czwarty raz to samo jeśli chodzi o kursy, tym razem chciałem jak najwięcej robić w docker desktopie

### 1.1
Stworzenie trzech kontenerów i pokazanie ich
![obrazek](images/1-1-1.jpg)
Zatrzymanie dwóch z nich
![obrazek](images/1-1-2.jpg)

### 1.2:
`docker image ls` i `docker ps`
![obrazek](images/1-2-1.jpg)
`docker ps -a`
![obrazek](images/1-2-2.jpg)
usuwanie wszystkich kontenerów
![obrazek](images/1-2-3.jpg)

### 1.3:
detach + `docker exec`
![obrazek](images/1-3-1.jpg)

### 1.4:
instalowanie curla na kontenerze ubuntu
![obrazek](images/1-4-1.jpg)
`docker exec` na kontenerze
![obrazek](images/1-4-2.jpg)

### 1.5:
zadanie z komendą tail i plikiem w środku kontenera
![obrazek](images/1-5-1.jpg)

### 1.6:
zadanie "znajdź hasło w opisie na dockerhubie"
![obrazek](images/1-6-1.jpg)

### 1.7:
Uruchomienie script.sh na konetenerze
![obrazek](images/1-7-1.jpg)

### 1.8:
`docker run -v`
![obrazek](images/1-8-1.jpg)
komenda użyta
docker run -v "$(Get-Location)/1.8/log/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service

### 1.10:
Działający web service lokalnie
![obrazek](images/1-10-1.jpg)

### 1.11:
Odpalenie projektu testowego lokalnie
![obrazek](images/1-11-1.jpg)
![obrazek](images/1-11-2.jpg)


### 1.12:
Działający frontend poprzez kontener
![obrazek](images/1-12-2.jpg)

### 1.13:
Działający backend poprzez kontener przyjmujący połączenia
![obrazek](images/1-13-2.jpg)

### 1.14:

miał być ping poprzez zmienne środowiskowe reacta
to nie działa

brak pomysłu dlaczego z mojej strony

docker run -e PORT=8080 -e REQUEST_ORIGIN=http://localhost:5000 -p 8080:8080 radeczu/backend

docker run -e REACT_APP_BACKEND_URL=http://localhost:8080 -p 5000:5000 radeczu/frontend

pingpong.js:

`
  import axios from 'axios'

  const baseURL = process.env.REACT_APP_BACKEND_URL || '/api'

  export const axiosInstance = axios.create({ baseURL })

  /**
  * This can be used to check that frontend has access to backend
  */
  export const pingpong = () => axiosInstance.get("/ping")
`

Defaultuje do /api zawsze, więc apka frontend się nie łączy do backendowej jakkolwiek ustawił bym wcześniej te envy

