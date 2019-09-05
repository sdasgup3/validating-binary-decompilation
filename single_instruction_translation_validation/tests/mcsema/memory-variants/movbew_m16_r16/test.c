void leaf() {
  __asm__("movbew %cx, -4(%rbp)");
  }

void main() {
  leaf();
}