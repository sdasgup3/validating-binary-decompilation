void leaf() {
  __asm__("adcb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}