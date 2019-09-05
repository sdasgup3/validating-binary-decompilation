void leaf() {
  __asm__("adcb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}