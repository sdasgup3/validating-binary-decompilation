void leaf() {
  __asm__("setnbe -4(%rbp)");
  }

void main() {
  leaf();
}