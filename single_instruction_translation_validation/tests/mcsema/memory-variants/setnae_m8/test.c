void leaf() {
  __asm__("setnae -4(%rbp)");
  }

void main() {
  leaf();
}