Feature:
	Como jugador
	Quiero iniciar un juego
	Para poder jugar ahorcado

Scenario: debo poder tener el titulo Bienvenido al juego de Ahorcado Digital
	Given que inicie la aplicacion
	Then debo poder ver "Bienvenido al juego de Ahorcado Digital"

Scenario: debo poder poner el nombre del jugador
	Given que inicie la aplicacion
	When ingreso a "Aaron" como jugador
	And inicio un partido
	Then debo poder ver "Bienvenido Aaron"

Scenario: debo poder ver la palabra a encontrar
	Given inicie la aplicacion
	Then debo poder ver una palabra enmascarada "sombrilla"
