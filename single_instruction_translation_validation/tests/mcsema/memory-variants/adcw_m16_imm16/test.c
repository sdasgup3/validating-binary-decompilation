void leaf() {
  __asm__("adcw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}