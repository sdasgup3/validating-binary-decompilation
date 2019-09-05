void leaf() {
  __asm__("testb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}