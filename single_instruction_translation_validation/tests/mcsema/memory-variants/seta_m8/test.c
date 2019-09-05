void leaf() {
  __asm__("seta -4(%rbp)");
  }

void main() {
  leaf();
}