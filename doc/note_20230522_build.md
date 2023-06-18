
Friday, 26th May 2023

- sono rimasto che ho testato la main_app stm_20230504 (quella con linizializzazione di quasi tutti i moduli hal) mettendo un ciclo while infinito prima della definizione e poi creazione del thread 
    - ho avviato e non si è bloccato o comunque il systick non ha dato errore
        - l'erroere rammento è dovuto al fatto che risulta una lista non vuota mentre lo è
            - xTaskIncrementTick
            - task.c: riga 2702 -> 				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
        - si potrebbe provare a mettere un breackpoint nel systick per vedere se vi entra 
