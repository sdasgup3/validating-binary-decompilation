void leaf() {
  __asm__("xchgw %bx, %ax");
  }

void main() {
  leaf();
}