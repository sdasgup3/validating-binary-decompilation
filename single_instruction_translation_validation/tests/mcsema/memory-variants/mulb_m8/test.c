void leaf() {
  __asm__("mulb -4(%rbp)");
  }

void main() {
  leaf();
}