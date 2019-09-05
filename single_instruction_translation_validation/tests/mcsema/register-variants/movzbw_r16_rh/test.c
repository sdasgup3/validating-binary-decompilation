void leaf() {
  __asm__("movzbw %ah, %bx");
  }

void main() {
  leaf();
}