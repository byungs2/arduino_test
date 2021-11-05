#define F_CPU 16000000L
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

void USART0_init(void);
void USART0_transmit(char data);
unsigned char USART0_receive(void);
void USART0_print(char *str);
void USART0_print_int(uint8_t n);
void TIMER_init(void);
uint8_t pulse_in(void);

uint8_t count = 0;
uint8_t time = 0;
uint8_t offset = 0;
uint8_t val = 0;
uint8_t t = 0;

// interrupt
ISR(TIMER0_OVF_vect) {
  count++;
  // 1.05 sec per interrupt
  if(count == 64) {
    count = 0;
    time++;
  }
}

int main(int argc, char *argv[]) {
  USART0_init();
  
  // 2번핀 출력, 3번핀 입력
  DDRD = 0x00;
  DDRD |= (1 << PD2);

  
  //TIMER_init();
  while(1) {
    _delay_ms(1000);
    val = PIND >> PD3 & 1;
    USART0_print_int(val);
    USART0_print("\n");
    PORTD |= (1 << PD2);
    _delay_ms(10);
    PORTD ^= (1 << PD2); 
    val = PIND >> PD3 & 1;
    USART0_print_int(val);
    USART0_print("\n");
  }
  /*
  t = pulse_in();
  USART0_print_int(t); 
  _delay_ms(5000);
  val = 0;
  */
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
  char string[4] = "000";
  if(n > 0) {
    for(int i = 0; n!=0; i++) {
      string[2-i] = n%10 + '0';
      n /= 10;
    }
  }
  string[3] = '\0';
  USART0_print(string);
}

void TIMER_init(void) {
  // 1024 16Mhz -> 16Khz
  TCCR0B |= (1 << CS02) | (1 << CS00);

  // enable ovf interrupt
  TIMSK0 |= (1 << TOIE0);
  // global interrup allow
  sei();
}

uint8_t pulse_in(void) {
  offset = time;
  USART0_print("START LITSEN\n");
  USART0_print_int(PIND);
  while(val != 1) {
    val = PIND >> PIND0 & 1; 
  };
  offset = time - offset;
  return offset;
}

