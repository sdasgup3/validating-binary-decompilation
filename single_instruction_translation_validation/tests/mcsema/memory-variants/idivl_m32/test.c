void leaf() {
  __asm__("idivl -4(%rbp)");
  }

void main() {
  leaf();
}