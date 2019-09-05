void leaf() {
  __asm__("xchgw %ax, %bx");
  }

void main() {
  leaf();
}