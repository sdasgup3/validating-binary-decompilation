void leaf() {
  __asm__("addw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}