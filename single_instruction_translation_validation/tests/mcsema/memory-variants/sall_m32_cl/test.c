void leaf() {
  __asm__("sall %cl, -4(%rbp)");
  }

void main() {
  leaf();
}