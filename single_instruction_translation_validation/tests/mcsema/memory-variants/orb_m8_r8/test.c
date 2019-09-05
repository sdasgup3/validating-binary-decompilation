void leaf() {
  __asm__("orb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}