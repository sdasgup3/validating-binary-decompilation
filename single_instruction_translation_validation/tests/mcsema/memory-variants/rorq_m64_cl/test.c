void leaf() {
  __asm__("rorq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}