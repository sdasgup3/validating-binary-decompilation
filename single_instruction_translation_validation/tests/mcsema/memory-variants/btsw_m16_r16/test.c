void leaf() {
  __asm__("btsw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}