void leaf() {
  __asm__("cmpxchgw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}