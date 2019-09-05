void leaf() {
  __asm__("imull -4(%rbp)");
  }

void main() {
  leaf();
}