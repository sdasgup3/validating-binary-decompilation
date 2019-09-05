void leaf() {
  __asm__("sarb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}