void leaf() {
  __asm__("adcw $0x77, %ax");
  }

void main() {
  leaf();
}