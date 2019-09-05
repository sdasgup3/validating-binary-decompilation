void leaf() {
  __asm__("orb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}