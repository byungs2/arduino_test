#define F_CPU 16000000L
#include <avr/io.h>
#include <util/delay.h>

void USART0_init(void);
void USART0_transmit(char data);
unsigned char USART0_receive(void);
void USART0_print(char *str);
void USART0_print_int(uint8_t n);
int pulse_in(void);

int main(int argc, char *argv[]) {
  USART0_init();
  
  // 2번핀 출력, 3번핀 입력
  DDRD = 0;
  DDRD |= (1 << PD2);

  PORTD = (1 << PD2);
  _delay_ms(10);
  PORTD = 0;
   
  return 0;
}

void USART0_init(void) {
  UBRR0H = 0x00;
  UBRR0L = 16;
  UCSR0A |= _BV(U2X0);
  UCSR0C |= 0x06;
  //UCSR0B |= _BV(RXEN0);
  UCSR0B |= _BV(TXEN0);
}

void USART0_transmit(char data) {
  while(!(UCSR0A & (1 << UDRE0)));
  UDR0 = data;
}

unsigned char USART0_receive(void) {
  while(!(UCSR0A & (1 << RXC0)));
  return UDR0;
}

void USART0_print(char *str) {
  for(int i = 0; str[i]; i++) {
    USART0_transmit(str[i]);
  }
}

void USART0_print_int(uint8_t n) {
  char string[4] = "0";
  int i, idx = 0;
  if(n > 0) {
    for(i = 0; n!=0; i++) {
      string[2-i] = n%10 + '0';
      n /= 10;
    }
  }
  string[3] = '\0';
  USART0_print(string);
}

int pulse_in(void) {
  return 1;
}
