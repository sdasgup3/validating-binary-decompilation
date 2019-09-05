void leaf() {
  __asm__("adcb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}