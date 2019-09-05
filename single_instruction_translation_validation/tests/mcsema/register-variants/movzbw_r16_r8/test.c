void leaf() {
  __asm__("movzbw %cl, %bx");
  }

void main() {
  leaf();
}