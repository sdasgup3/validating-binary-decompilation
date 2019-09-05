void leaf() {
  __asm__("orb -4(%rbp), %bl");
  }

void main() {
  leaf();
}