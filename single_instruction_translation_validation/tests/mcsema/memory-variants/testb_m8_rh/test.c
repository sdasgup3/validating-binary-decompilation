void leaf() {
  __asm__("testb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}