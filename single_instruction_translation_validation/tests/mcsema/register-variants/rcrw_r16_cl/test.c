void leaf() {
  __asm__("rcrw %cl, %bx");
  }

void main() {
  leaf();
}