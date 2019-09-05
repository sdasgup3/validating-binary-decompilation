void leaf() {
  __asm__("adcb $0x77, %bl");
  }

void main() {
  leaf();
}