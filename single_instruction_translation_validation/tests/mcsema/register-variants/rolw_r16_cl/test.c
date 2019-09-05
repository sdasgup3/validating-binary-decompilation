void leaf() {
  __asm__("rolw %cl, %bx");
  }

void main() {
  leaf();
}