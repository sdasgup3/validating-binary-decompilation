void leaf() {
  __asm__("sarw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}