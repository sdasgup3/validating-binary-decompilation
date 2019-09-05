void leaf() {
  __asm__("negw -4(%rbp)");
  }

void main() {
  leaf();
}