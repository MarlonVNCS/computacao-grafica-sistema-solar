### ETAPA 2

* O theta é uma variável que aumenta a cada frame, se tornando responsável por gerar o movimento de rotação dos planetas e das luas.
* O orbitspeed define a velocidade com que o theta aumenta, controlando assim a velocidade da rotação.
* No método moon.update(), a lua atualiza seu valor de theta, alterando sua posição na órbita ao longo do tempo.
* A velocidade das luas pode ser positiva (sentido anti-horário) ou negativa (sentido horário), pois o orbitspeed pode receber valores aleatórios nesses dois sentidos.

