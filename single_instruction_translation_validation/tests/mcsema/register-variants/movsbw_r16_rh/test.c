void leaf() {
  __asm__("movsbw %ah, %bx");
  }

void main() {
  leaf();
}