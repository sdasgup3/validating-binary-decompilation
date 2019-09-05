void leaf() {
  __asm__("adcw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}