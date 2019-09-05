void leaf() {
  __asm__("setnge -4(%rbp)");
  }

void main() {
  leaf();
}