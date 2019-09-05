void leaf() {
  __asm__("setle -4(%rbp)");
  }

void main() {
  leaf();
}