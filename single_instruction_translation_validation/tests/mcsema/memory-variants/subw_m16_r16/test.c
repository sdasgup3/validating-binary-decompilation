void leaf() {
  __asm__("subw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}