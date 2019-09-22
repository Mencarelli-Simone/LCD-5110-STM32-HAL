# LCD_5110_STM32_HAL
LCD 5110 with PCD8544 48× 84 pixels matrix LCDcontroller/driver (NOKIA old phones) library for stm32 compatible with HAL libraries 

this is a very simple library meant to be used with stm32 microcontrollers programmed in c using the HAL libraries
i uses spi with DMA to write text or to write a preformatted bitmap as a screen page (every byte is writtenas an 8 pixel columm, each colum written to the (memory) screen one after the other horizzontally in 6 rows. 
Example {0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C }-->{0b00000000, 0b01111100, 0b00010010, 0b00010001, 0b00010010, 0b01111100}
LSB - - - # - -
    - # # - # #
    - # - - - #
    - # - - - #
    - # # # # # 
    - # - - - #
    - # - - - #
MSB - - - - - -

in the EXAMPLE folder you can find the inc and the src folder tha you can merge in to your cubeMX generated project, i've used a "bluepill" dev board along with a stlink V2 usb dongle, you should find the settings i've used opening the .ioc file with STM32cubeMX

you can do wathever you want with my code.
