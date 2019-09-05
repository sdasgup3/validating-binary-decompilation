void leaf() {
  __asm__("btsw %cx, %bx");
  }

void main() {
  leaf();
}