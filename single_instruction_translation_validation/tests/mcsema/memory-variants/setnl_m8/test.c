void leaf() {
  __asm__("setnl -4(%rbp)");
  }

void main() {
  leaf();
}