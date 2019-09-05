void leaf() {
  __asm__("cmpb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}