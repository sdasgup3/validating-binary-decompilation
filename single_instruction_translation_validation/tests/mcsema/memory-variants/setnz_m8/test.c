void leaf() {
  __asm__("setnz -4(%rbp)");
  }

void main() {
  leaf();
}