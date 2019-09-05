void leaf() {
  __asm__("rorw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}