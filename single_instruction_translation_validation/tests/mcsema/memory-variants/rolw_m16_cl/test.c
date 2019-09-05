void leaf() {
  __asm__("rolw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}