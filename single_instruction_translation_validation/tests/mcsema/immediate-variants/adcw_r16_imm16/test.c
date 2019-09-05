void leaf() {
  __asm__("adcw $0x77, %bx");
  }

void main() {
  leaf();
}