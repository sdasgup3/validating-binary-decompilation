void leaf() {
  __asm__("rorw %cl, %bx");
  }

void main() {
  leaf();
}