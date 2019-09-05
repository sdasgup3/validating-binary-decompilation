void leaf() {
  __asm__("movsbw %cl, %bx");
  }

void main() {
  leaf();
}