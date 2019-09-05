void leaf() {
  __asm__("salw %cl, %bx");
  }

void main() {
  leaf();
}