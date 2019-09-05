void leaf() {
  __asm__("adcl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}