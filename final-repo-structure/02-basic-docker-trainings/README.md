### Lab 2 Radosław Czuj

### Zrzuty ekranu

## 1.RUNNING CONTAINERS

1. Komenda `docker images`: 
![01](images/1-running-containers/1-1-task.jpg)

2. Komenda `docker search`: 
![02](images/1-running-containers/1-2-1-task.jpg)

3. Komenda `docker pull`: 
![03](images/1-running-containers/1-2-2-task.jpg)

4. Komenda `docker pull` z tagiem: 
![04](images/1-running-containers/1-3-task.jpg)

5. Komenda `docker rmi`: 
![05](images/1-running-containers/1-4-1-task.jpg)

6. Komenda usunięcia wszystkich obrazów w windows power shell (wcześniejszy kurs robiłem na linuxie, więc teraz testowałem wariant dla windowsa): 
![06](images/1-running-containers/1-4-2-task.jpg)

7. Komenda `docker run`:  
![07](images/1-running-containers/2-1-task.jpg)

8. Komenda `docker ps`:  
![08](images/1-running-containers/2-2-task.jpg)

9. Komenda `docker run bin/bash`:  
![09](images/1-running-containers/2-3-1-task.jpg)

10. Komenda `docker run -it bin/bash`:  
![10](images/1-running-containers/2-3-2-task.jpg)

11. Komenda `docker run -d bin/bash/sleep 3600`:  
![11](images/1-running-containers/2-4-task.jpg)

12. Komenda `docker exec`:  
![12](images/1-running-containers/2-5-1-task.jpg)

13. Komenda `docker ps dla exec`:  
![13](images/1-running-containers/2-5-2-task.jpg)

14. Komenda `docker stop`:  
![14](images/1-running-containers/2-6-task.jpg)

15. Komenda `docker rm`:  
![15](images/1-running-containers/2-7-1-task.jpg)

16. Komenda usuwania wszystkich kontenerów w windows power shell:  
![16](images/1-running-containers/2-7-2-task.jpg)

## 2.CHANGING IMAGES

1. Pull ubuntu: 
![1](images/2-changing-images/1-task.jpg)

2. Komenda `run -it ubuntu` i pobranie komendy pinga:
![2](images/2-changing-images/2-task.jpg)

3. Ping:
![3](images/2-changing-images/3-task.jpg)

4. Docker ps -a:
![4](images/2-changing-images/4-task.jpg)

5. Docker commit:
![5](images/2-changing-images/5-task.jpg)

## 3.BUILDING IMAGES

1. Pierwszy `docker build`: 
![1](images/3-building-images/1-task.jpg)

2. `docker images`:
![2](images/3-building-images/2-task.jpg)

3. Drugi, leprzy `docker build`:
![3](images/3-building-images/3-task.jpg)

## 4.SHARING IMAGES

1. Czyszczenie: 
![1](images/4-sharing-images/)

2. Retag: 
![2](images/4-sharing-images/)

3. Push:
![3](images/4-sharing-images/)

4. Dockerhub:
![4](images/4-sharing-images/)

## 5.VOLUMES

1. Run apacha
![1](images/5-volumes/1-task.jpg)

2. Edycja zawartości
![2](images/5-volumes/2-task.jpg)

3. Tworzenie i usunięcie volume
![3](images/5-volumes/3-task.jpg)

4. Persistant data with volume
![4](images/5-volumes/4-task.jpg)

5. Próba zmountowania index.html z tego repo ale nie wyszło bo mam spacje w ścieżce. Rozumiem jak działa ta komenda
![5](images/5-volumes/5-task.jpg)

## 6.NETWORKING

Coś nie działało mi z konterenerami i się nie pokazywały po stworzeniu przy pomocy komend autora tego kursu
tylko network mogłem stworzyć.

![1](images/6-networking/1-task.jpg)
![2](images/6-networking/2-task.jpg)
![3](images/6-networking/3-task.jpg)
![4](images/6-networking/4-task.jpg)
![5](images/6-networking/4-1-task.jpg)
