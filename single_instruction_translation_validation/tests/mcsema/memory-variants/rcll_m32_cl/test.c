void leaf() {
  __asm__("rcll %cl, -4(%rbp)");
  }

void main() {
  leaf();
}