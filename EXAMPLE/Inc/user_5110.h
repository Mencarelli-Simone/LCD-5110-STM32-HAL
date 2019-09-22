#include "main.h"
#include "gpio.h"
#include "spi.h"


#ifndef __USER_5110_H_
#define __USER_5110_H_

#define LCD_RESET_PIN LCD_RESET_Pin // LCD reset pin.
#define LCD_RESET_PORT LCD_RESET_GPIO_Port

#define LCD_CE_PIN LCD_CE_Pin // Use hardware SPI NSS pin or define here.
#define LCD_CE_PORT LCD_CE_GPIO_Port

#define LCD_DC_PIN LCD_DC_Pin // Data_Command select pin.
#define LCD_DC_PORT LCD_DC_GPIO_Port

#define LCD_SPI_INTERFACE hspi2//SPI interface


#define LCD_MAX_TIMEOUT_TICKS 10

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *);
void LCD_Init(void);
void LCD_Reset(void);
void LCD_Write_Command(uint8_t cmd);
void LCD_Write_Data(uint8_t data);
void LCD_Set_Postion(uint8_t PosX, uint8_t PosY);
void LCD_Clear(void);
void LCD_Write_Char(uint8_t ch);
void LCD_Write_String(uint8_t PosX, uint8_t PosY, char * str);
void LCD_Callback(void);
void LCD_Set_Contrast(uint8_t contrast);
void LCD_Power_Off(void);
void LCD_Write_Bitmap(uint8_t * bmp);
void LCD_Test_Image(void);
void LCD_Sorrentino(void);
void LCD_Inverse_Mode(void);
void LCD_Direct_Mode(void);
#endif
