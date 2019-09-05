void leaf() {
  __asm__("setnb -4(%rbp)");
  }

void main() {
  leaf();
}