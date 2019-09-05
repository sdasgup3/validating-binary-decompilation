void leaf() {
  __asm__("xchgw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}