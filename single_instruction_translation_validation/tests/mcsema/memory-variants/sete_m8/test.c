void leaf() {
  __asm__("sete -4(%rbp)");
  }

void main() {
  leaf();
}