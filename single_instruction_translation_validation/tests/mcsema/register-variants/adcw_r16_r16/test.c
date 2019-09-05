void leaf() {
  __asm__("adcw %cx, %bx");
  }

void main() {
  leaf();
}