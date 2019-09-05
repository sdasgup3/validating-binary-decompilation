void leaf() {
  __asm__("setl -4(%rbp)");
  }

void main() {
  leaf();
}