#include "radio.h"

bool isRadioInitialized = false;
volatile bool radioEvent = false;

/*============================================================================
Name    :   initRadio
------------------------------------------------------------------------------
Purpose :   initializes the Radio, with the SPI communication first and then
	    the NRF24L01+ chip
Input   :   
Output  :   none
Return	:
Notes   :
============================================================================*/
bool initRadio()
{
    uint8_t initOK;

//    if (SPIInit())
//    {
        if (initOK = initNRF24L01P())
        {
//            if (DEBUG_ENABLED())
//                debug_printf("RF successfully initialized, configuring...\n");

            initOK &= setChannel(RADIO_CHANNEL);
            initOK &= setAutoAck(true);
            initOK &= setDataRate(RF24_1MBPS);
//            initOK &= enableAckPayload();
            setPayloadSize(PAYLOAD_SIZE);



//            if (DEBUG_ENABLED() && initOK)
//            {
//                debug_printf("RF Configuration OK!\n");
//                printDetails();
//            }

            openWritingPipe(DEFAULT_ADDRESS);
//            uint8_t *addr = "2Node";

//            openWritingPipe(addr);
//            openReadingPipe(0, DEFAULT_ADDRESS);
//            openReadingPipe(1, DEFAULT_ADDRESS);
//            openReadingPipe(1, "2Node");
            startListening();

            isRadioInitialized = true;
        }
//    }
    return initOK;
}

/*============================================================================
Name    :   sendRadioMessage
------------------------------------------------------------------------------
Purpose :   Send a framed message through radio to the current SwarmBots
Input   :    
Output  :   
Return	: 
Notes   :
============================================================================*/
void sendRadioMessage(Message *msg, uint8_t size)
{
    startWrite((uint8_t *)msg, size);
}

/*============================================================================
Name    :   selectRobot
------------------------------------------------------------------------------
Purpose :   opens the writing and reading pipe for the given robot
Input   :   r : pointer to the desired robot 
Output  :   
Return	: 
Notes   :
============================================================================*/
void selectRobot(Robot *r)
{
    if (r)
    {
        openWritingPipe(r->pipeAddress);
        openReadingPipe(0, r->pipeAddress);
    }
}


HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	radioEvent = true;
}
