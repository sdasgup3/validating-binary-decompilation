void leaf() {
  __asm__("movb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}