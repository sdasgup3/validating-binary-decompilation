void leaf() {
  __asm__("divl -4(%rbp)");
  }

void main() {
  leaf();
}