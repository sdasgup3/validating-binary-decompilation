void leaf() {
  __asm__("xchgw %cx, %bx");
  }

void main() {
  leaf();
}