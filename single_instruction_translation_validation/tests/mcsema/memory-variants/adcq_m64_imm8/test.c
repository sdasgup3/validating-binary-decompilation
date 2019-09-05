void leaf() {
  __asm__("adcq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}