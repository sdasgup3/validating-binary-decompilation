void leaf() {
  __asm__("setz -4(%rbp)");
  }

void main() {
  leaf();
}