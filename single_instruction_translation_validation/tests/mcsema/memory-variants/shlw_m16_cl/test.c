void leaf() {
  __asm__("shlw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}