void leaf() {
  __asm__("setnc -4(%rbp)");
  }

void main() {
  leaf();
}