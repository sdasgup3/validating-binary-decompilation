void leaf() {
  __asm__("xaddw %cx, %bx");
  }

void main() {
  leaf();
}