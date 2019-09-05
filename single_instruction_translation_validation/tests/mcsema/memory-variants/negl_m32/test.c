void leaf() {
  __asm__("negl -4(%rbp)");
  }

void main() {
  leaf();
}