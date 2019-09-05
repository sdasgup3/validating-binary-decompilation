void leaf() {
  __asm__("setge -4(%rbp)");
  }

void main() {
  leaf();
}